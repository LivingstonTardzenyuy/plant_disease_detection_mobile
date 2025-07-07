import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:intl/intl.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/common/widgets/reports/info_row.dart';
import 'package:plant_disease_detection_mobile/common/widgets/texts/section_heading.dart';
import 'package:plant_disease_detection_mobile/features/report/models/phone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/service/disease_info_service.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneDetailedDiagnosticReportScreen extends StatelessWidget {
  final PhoneScanReportModel report;

  const PhoneDetailedDiagnosticReportScreen({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMMd().add_jm().format(report.date);
    final diseaseInfo = DiseaseInfoService.getDiseaseById(report.diseaseId);

    if (diseaseInfo == null) {
      return const Scaffold(
        body: Center(child: Text('Disease information not found.')),
      );
    }

    // Define a common MarkdownStyleSheet to maintain consistent styling
    final baseMarkdownStyle = Theme.of(context).textTheme.bodyLarge; // Get your base text style

    final customMarkdownStyleSheet = MarkdownStyleSheet(
      p: baseMarkdownStyle, // Paragraphs will use bodyLarge
      strong: baseMarkdownStyle?.copyWith(fontWeight: FontWeight.bold), // Bold text will be bodyLarge bold
      h1: Theme.of(context).textTheme.headlineSmall, // For SectionHeadings (if you pass them as Markdown)
      h2: Theme.of(context).textTheme.headlineSmall,
      h3: Theme.of(context).textTheme.headlineSmall,
      // You can define other styles as needed, e.g., for `bullet`
      listIndent: 20.0, // Indent for list items
      listBullet: baseMarkdownStyle, // Style for the bullet character
    );


    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Diagnosis",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: TColors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: TColors.white),
            onPressed: () {
              // TODO: Implement share functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              // TODO: Implement delete confirmation
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --- Disease Name
            Text(
              diseaseInfo.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// --- Scan Image (Single)
            TRoundedImage(
              imageUrl: report.imageUrl,
              width: TDeviceUtils.getScreenWidth(),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --- Confidence Level
            Row(
              children: [
                const Icon(Icons.analytics_outlined, color: TColors.primary),
                const SizedBox(width: 8),
                Text("Confidence: ${report.confidence.toStringAsFixed(1)}%"),
              ],
            ),
            const SizedBox(height: TSizes.sm),

            LinearProgressIndicator(
              value: report.confidence / 100,
              color: Colors.green,
              backgroundColor: Colors.grey.shade300,
              minHeight: 6,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --- Explanation
            TSectionHeading(title: "Explanation", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // Text(diseaseInfo.explanation),
            MarkdownBody(
              data: diseaseInfo.explanation,
              shrinkWrap: true, // Crucial for use inside Column/SingleChildScrollView
              selectable: true, // Optional: makes text selectable
              styleSheet: customMarkdownStyleSheet, // Apply custom styles
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --- Possible Causes
            TSectionHeading(title: "Possible Causes", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // Text(diseaseInfo.possibleCauses),
            MarkdownBody(
              data: diseaseInfo.possibleCauses,
              shrinkWrap: true, // Crucial for use inside Column/SingleChildScrollView
              selectable: true, // Optional: makes text selectable
              styleSheet: customMarkdownStyleSheet, // Apply custom styles
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --- Treatment
            TSectionHeading(
              title: "Suggested Treatment",
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // Text(diseaseInfo.treatment),
            MarkdownBody(
              data: diseaseInfo.treatment,
              shrinkWrap: true, // Crucial for use inside Column/SingleChildScrollView
              selectable: true, // Optional: makes text selectable
              styleSheet: customMarkdownStyleSheet, // Apply custom styles
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --- Metadata
            TSectionHeading(title: "Scan Info", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            InfoRow(
              icon: Icons.camera_alt,
              label: "Scan Type: ${report.scanType}",
            ),
            InfoRow(icon: Icons.calendar_today, label: "Date: $formattedDate"),

            if (report.location != null)
              InfoRow(
                icon: Icons.location_on,
                label:
                    "Location: Lat ${report.location!.lat.toStringAsFixed(4)}, "
                    "Lon ${report.location!.lon.toStringAsFixed(4)}",
              ),

            if (report.location != null) ...[
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(report.location!.lat, report.location!.lon),
                    zoom: 15,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('scan_location'),
                      position: LatLng(
                        report.location!.lat,
                        report.location!.lon,
                      ),
                      infoWindow: const InfoWindow(title: 'Scan Location'),
                    ),
                  },
                  zoomControlsEnabled: true,
                  myLocationButtonEnabled: false,
                  liteModeEnabled: true, // For performance and preview only
                ),
              ),
              const SizedBox(height: TSizes.sm),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.directions),
                  label: const Text('Navigate to Location'),
                  onPressed: () async {
                    final lat = report.location!.lat;
                    final lon = report.location!.lon;
                    final url = Uri.parse(
                      'https://www.google.com/maps/dir/?api=1&destination=lat},lon}',
                    );
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Could not open Google Maps.'),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
