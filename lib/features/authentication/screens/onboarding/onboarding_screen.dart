import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// --- Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                imageUrl: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              // OnBoardingPage(
              //   imageUrl: TImages.onBoardingImage2,
              //   title: TTexts.onBoardingTitle2,
              //   subTitle: TTexts.onBoardingSubTitle2,
              // ),
              OnBoardingPage(
                imageUrl: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// --- Skip Button
          const OnBoardingSkip(),

          /// --- Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// --- Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

