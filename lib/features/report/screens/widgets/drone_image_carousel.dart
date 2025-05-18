import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/features/report/controllers/drone_detailed_diagnostic_report_controller.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';

class DroneImageCarousel extends StatelessWidget {
  final List<String> imageUrls;

  const DroneImageCarousel({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DroneDetailedDiagnosticReportController());

    return Column(
      children: [
        /// Carousel
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index, _) {
            final imageUrl = imageUrls[index];
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => Dialog(
                        child: InteractiveViewer(
                          child: TRoundedImage(
                            imageUrl: imageUrl,
                            width: TDeviceUtils.getScreenWidth(),
                          ),
                        ),
                      ),
                );
              },
              child: TRoundedImage(
                imageUrl: imageUrl,
                width: TDeviceUtils.getScreenWidth() * 0.75,
              ),
            );
          },
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            viewportFraction: 0.85,
            enableInfiniteScroll: false,
            autoPlay: true,
            onPageChanged: (index, reason) {
              controller.updateIndex(index);
            },
          ),
        ),

        const SizedBox(height: 8),

        /// Dot indicators (reactive)
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                imageUrls.asMap().entries.map((entry) {
                  final isSelected =
                      controller.currentCarouselIndex.value == entry.key;
                  return Container(
                    width: isSelected ? 12.0 : 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          isSelected ? TColors.primary : Colors.grey.shade400,
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
