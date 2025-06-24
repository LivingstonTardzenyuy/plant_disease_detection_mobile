import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:plant_disease_detection_mobile/common/widgets/reports/phone_report_card.dart';
import 'package:plant_disease_detection_mobile/common/widgets/texts/section_heading.dart';
import 'package:plant_disease_detection_mobile/features/home/models/news_item.dart';
import 'package:plant_disease_detection_mobile/features/home/screens/home/widgets/quick_action_button.dart';
import 'package:plant_disease_detection_mobile/features/home/screens/home/widgets/status_card.dart';
import 'package:plant_disease_detection_mobile/features/home/screens/home/widgets/trending_news.dart';
import 'package:plant_disease_detection_mobile/features/home/screens/home/widgets/weather_report.dart';
import 'package:plant_disease_detection_mobile/features/report/models/phone_report_model.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/phone_detailed_diagnostic_report_screen.dart';
import 'package:plant_disease_detection_mobile/features/report/service/phone_report_service.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<NewsItem> news = [
      NewsItem(
        imageUrl:
            'assets/images/trending_news/farmers_adapting_to_climate_change.jpeg',
        headline: 'Farmers Adapting to Climate Change',
        url:
            'https://www.theigc.org/publications/risk-and-resilience-agricultural-adaptation-climate-change-developing-countries',
        publicationDate: '12 May 2025',
      ),
      NewsItem(
        imageUrl:
            'assets/images/trending_news/new_technology_boosts_agricultural_yields.jpeg',
        headline: 'New Technology Boosts Agricultural Yields',
        url:
            'https://www.orchardtech.com.au/how-technology-can-yield-new-growth-in-agriculture/',
        publicationDate: '10 May 2025',
      ),
      NewsItem(
        imageUrl:
            'assets/images/trending_news/the_future_of_sustainable_farming.jpeg',
        headline: 'The Future of Sustainable Farming',
        url:
            'https://www.landapp.com/post/the-future-of-sustainable-agriculture',
        publicationDate: '8 May 2025',
      ),
    ];
    return Scaffold(
      // appBar: TAppBar(
      //   title: Text(
      //     'Welcome back, Farmer!',
      //     style: Theme.of(context).textTheme.headlineMedium!,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ------ Header Section
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// AppBar
                  TAppBar(
                    title: Text(
                      "PlaCare",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                    background: Colors.transparent,
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Greeting Text
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back, Josue!',
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: TColors.white),
                        ),
                        const SizedBox(height: 4),

                        /// Motivational or Contextual Tip
                        Text(
                          'Ready to scan and protect your crops today?',
                          style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: TColors.white.withValues(alpha: 0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 1.5),
                ],
              ),
            ),

            ///----- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///----- Weather Report
                  TSectionHeading(
                    title: 'Weather Report',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  WeatherReport(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///----- Quick Actions
                  TSectionHeading(
                    title: "Quick Actions",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuickActionButton(
                        icon: Iconsax.scan_barcode,
                        label: 'Scan Plant',
                        color: TColors.primary,
                      ),
                      QuickActionButton(
                        icon: Iconsax.airplane,
                        label: 'Launch Drone',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///--- Trending New
                  TSectionHeading(title: "Trending News"),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TrendingNews(news: news),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///----- Health Summary
                  TSectionHeading(
                    title: "Health Summary",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      StatusCard(
                        color: TColors.primary,
                        label: 'Healthy',
                        percentage: 68,
                      ),
                      StatusCard(
                        color: Colors.amber,
                        label: 'Issues',
                        percentage: 23,
                      ),
                      StatusCard(
                        color: Colors.red,
                        label: 'Critical',
                        percentage: 9,
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///----- Recent Reports
                  TSectionHeading(
                    title: 'Recent Reports',
                    showActionButton: false,
                  ),

                  // const SizedBox(height: TSizes.sm / 2),
                  Transform.translate(
                    offset: Offset(0, -30),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: min(3, PhoneReportService.reports.length),
                      // Show max 3 items,
                      itemBuilder: (_, index) {
                        final PhoneScanReportModel report = PhoneReportService.reports[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: TSizes.spaceBtwItems,
                          ),
                          child: GestureDetector(
                            onTap:
                                () => PhoneDetailedDiagnosticReportScreen(
                                  report: report,
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
          ],
        ),
      ),
    );
  }
}

// Components
