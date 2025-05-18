import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/features/report/models/drone_report_model.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class DroneReportCard extends StatelessWidget {
  final DroneScanReportModel report;

  const DroneReportCard({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final totalDiseases = report.subReports.length;
    final allImages = report.subReports.expand((sr) => sr.imageUrls).toList();
    final allLocations = report.subReports.expand((sr) => sr.locations).toList();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// ---- Preview Image
        TRoundedImage(
          imageUrl: allImages.isNotEmpty ? allImages[0] : '', // fallback
          width: 100,
          height: 90,
          borderRadius: TSizes.borderRadiusSm,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        /// ---- Report Info Summary
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Details
              Text(
                "$totalDiseases Disease(s) Detected",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: TSizes.xs / 2),

              /// Report Type and Date
              Row(
                children: [
                  Icon(Icons.flight, size: TSizes.iconSm, color: TColors.primary),
                  const SizedBox(width: TSizes.sm),
                  Text(
                    "Drone Scan",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: TColors.primary,
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 4),

              /// ----- Number of scanned Images
              Text(
                "${report.totalImagesScanned} images scanned • ${allLocations.length} location(s)",
                style: Theme.of(context).textTheme.labelLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              /// ----- Date
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Iconsax.calendar,
                          size: 16, // Match your text size
                          color: Theme.of(context).textTheme.labelSmall?.color,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "Date: ${DateFormat.yMMMd().format(report.date)}",
                      style: Theme.of(context).textTheme.labelSmall
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems * 1.5),
      ],
    );
  }
}
