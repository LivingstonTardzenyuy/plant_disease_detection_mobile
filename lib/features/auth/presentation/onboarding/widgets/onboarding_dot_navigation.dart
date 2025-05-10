import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/core/utils/device/device_utility.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';
import 'package:plant_disease_detection_mobile/features/auth/presentation/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
