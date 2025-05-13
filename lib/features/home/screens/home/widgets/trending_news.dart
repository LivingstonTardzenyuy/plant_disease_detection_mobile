import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/features/home/controllers/home/home_controller.dart';
import 'package:plant_disease_detection_mobile/features/home/models/news_item.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class TrendingNews extends StatelessWidget {
  const TrendingNews({super.key, required this.news});

  final List<NewsItem> news;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final bool isDarkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: 145,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: [
            for (NewsItem newsItem in news)
              GestureDetector(
                onTap: () {},
                child: TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  width: double.infinity,
                  backgroundColor: isDarkMode ? TColors.black : TColors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              newsItem.url,
                              style: Theme.of(context).textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: TSizes.spaceBtwItems / 2),

                            Text(
                              newsItem.headline,
                              style: Theme.of(context).textTheme.headlineSmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: TSizes.spaceBtwItems),

                            Text(
                              "Published on: ${newsItem.publicationDate}",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: TSizes.spaceBtwItems),
                      TRoundedImage(
                        imageUrl: newsItem.imageUrl,
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < news.length; i++)
                TCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? TColors.primary
                          : TColors.grey,
                  margin: EdgeInsets.only(right: 5),
                ),
            ],
          );
        }),
      ],
    );
  }
}
