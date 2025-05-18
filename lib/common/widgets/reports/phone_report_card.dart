import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/features/report/models/phone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/service/disease_info_service.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class PhoneReportCard extends StatelessWidget {
  final PhoneScanReportModel report;

  const PhoneReportCard({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final isDrone = report.scanType.toLowerCase() == 'drone';
    final String diseaseName = DiseaseInfoService.getName(report.diseaseId);
    return Row(
      children: [
        /// ----- Report Image
        TRoundedImage(
          imageUrl: report.imageUrl,
          width: 100,
          height: 90,
          borderRadius: TSizes.borderRadiusSm,
        ),
        SizedBox(width: TSizes.spaceBtwItems),

        /// ----- Report Summary Text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                diseaseName,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.apply(fontWeightDelta: 2),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          isDrone ? Icons.flight : Icons.phone_android,
                          size: TSizes.iconSm,
                          color: TColors.primary,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '${report.scanType} Scan',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        fontWeightDelta: 2,
                        color: TColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),

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
                      style: Theme.of(context).textTheme.labelSmall!.apply(
                        color: Colors.black.withValues(alpha: 0.4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems * 1.5),

        /// ----- Confidence Score
        CircularPercentIndicator(
          radius: 35.0,
          lineWidth: 10.0,
          percent: report.confidence / 100,
          center: Text(
            "${report.confidence} %",
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(fontWeightDelta: 2),
          ),
          backgroundColor: TColors.primary.withValues(alpha: 0.2),
          progressColor: TColors.primary,
          footer: Text(
            "Confidence",
            style: Theme.of(context).textTheme.labelLarge!.apply(
              color: TColors.black.withValues(alpha: 0.4),
              fontWeightDelta: 1,
            ),
          ),
        ),
      ],
    );
  }
}
