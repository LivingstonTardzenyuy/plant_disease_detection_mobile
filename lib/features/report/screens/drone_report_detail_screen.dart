import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/common/widgets/reports/info_row.dart';
import 'package:plant_disease_detection_mobile/common/widgets/texts/section_heading.dart';
import 'package:plant_disease_detection_mobile/features/report/models/drone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/widgets/drone_image_carousel.dart';
import 'package:plant_disease_detection_mobile/features/report/service/disease_info_service.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';

class DroneDetailedDiagnosticReportScreen extends StatelessWidget {
  final DroneScanReportModel report;

  const DroneDetailedDiagnosticReportScreen({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMMd().add_jm().format(report.date);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Diagnosis",
          style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
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
            TSectionHeading(title: "Scan Info", showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            InfoRow(icon: Icons.camera_alt, label: "Scan Type: ${report.scanType}"),
            InfoRow(icon: Icons.image, label: "Total Images Scanned: ${report.totalImagesScanned}"),
            InfoRow(icon: Icons.calendar_today, label: "Date: $formattedDate"),
            const SizedBox(height: TSizes.spaceBtwSections / 2),

            /// --- Sub Reports Grouped by Disease
            ...report.subReports.map((subReport) {
              final diseaseInfo = DiseaseInfoService.getDiseaseById(subReport.diseaseId);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections / 2),
                  /// --- Disease Name
                  Text(
                    diseaseInfo?.name ?? "Unknown Disease",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),


                  /// Average Confidence
                  Row(
                    children: [
                      const Icon(Icons.analytics_outlined, color: TColors.primary),
                      const SizedBox(width: 8),
                      Text("Avg. Confidence: ${subReport.averageConfidence.toStringAsFixed(1)}%"),
                    ],
                  ),
                  const SizedBox(height: TSizes.sm),
                  LinearProgressIndicator(
                    value: subReport.averageConfidence / 100,
                    color: Colors.green,
                    backgroundColor: Colors.grey.shade300,
                    minHeight: 6,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  DroneImageCarousel(imageUrls: subReport.imageUrls),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// GPS Locations
                  TSectionHeading(title: "Detected Locations", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  ...subReport.locations.map((location) => InfoRow(
                    icon: Icons.location_on,
                    label: "Lat: ${location.lat.toStringAsFixed(4)}, "
                        "Lon: ${location.lon.toStringAsFixed(4)}",
                  )),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Explanation, Causes, Treatment
                  if (diseaseInfo != null) ...[
                    TSectionHeading(title: "Explanation", showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Text(diseaseInfo.explanation),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    TSectionHeading(title: "Possible Causes", showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Text(diseaseInfo.possibleCauses),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    TSectionHeading(title: "Suggested Treatment", showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Text(diseaseInfo.treatment),
                  ],

                  const SizedBox(height: TSizes.spaceBtwSections / 2),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
