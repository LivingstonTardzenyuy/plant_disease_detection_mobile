import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/reports/report_card.dart';
import 'package:plant_disease_detection_mobile/common/widgets/search/search_bar.dart';
import 'package:plant_disease_detection_mobile/features/report/models/report.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Scan Reports",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: TColors.white),
        ),
        showBackArrow: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// ----- Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                child: TSearchBar(hintText: 'Disease, plant...'),
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              /// ----- Report List
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Report.reports.length,
                itemBuilder:
                    (_, index) => Padding(
                      padding: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                      child: ReportCard(report: Report.reports[index]),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
