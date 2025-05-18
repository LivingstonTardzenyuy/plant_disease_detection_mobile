import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/tab_bar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/reports/phone_report_card.dart';
import 'package:plant_disease_detection_mobile/common/widgets/search/search_bar.dart';
import 'package:plant_disease_detection_mobile/features/report/models/drone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/phone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/drone_report_detail_screen.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/phone_detailed_diagnostic_report_screen.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/widgets/drone_report_card.dart';
import 'package:plant_disease_detection_mobile/features/report/service/drone_report_service.dart';
import 'package:plant_disease_detection_mobile/features/report/service/phone_report_service.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Scan Reports",
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: TColors.white),
          ),
          showBackArrow: false,
          bottom: TTabBar(
            tabs: [Tab(text: 'Phone Scans'), Tab(text: 'Drone Scans')],
          ),
        ),
        body: TabBarView(
          children: [
            /// ---- Phone Reports Tab
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                    child: TSearchBar(hintText: 'Disease, plant...'),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Expanded(
                    child: ListView.builder(
                      itemCount: PhoneReportService.reports.length,
                      itemBuilder: (_, index) {
                        final PhoneScanReportModel report =
                            PhoneReportService.reports[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: TSizes.spaceBtwItems,
                          ),
                          child: InkWell(
                            onTap:
                                () => Get.to(
                                  () => PhoneDetailedDiagnosticReportScreen(
                                    report: report,
                                  ),
                                ),
                            child: PhoneReportCard(report: report),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            /// ---- Drone Reports Tab
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                    child: TSearchBar(hintText: 'Disease, location...'),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Expanded(
                    child: ListView.builder(
                      itemCount: DroneReportService.reports.length,
                      itemBuilder: (_, index) {
                        final DroneScanReportModel droneReport =
                            DroneReportService.reports[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: TSizes.spaceBtwItems,
                          ),
                          child: InkWell(
                            onTap:
                                () => Get.to(
                                  () => DroneDetailedDiagnosticReportScreen(
                                    report: droneReport,
                                  ),
                                ),
                            child: DroneReportCard(report: droneReport),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
