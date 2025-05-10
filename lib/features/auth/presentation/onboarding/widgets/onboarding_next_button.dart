import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/core/utils/device/device_utility.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';
import 'package:plant_disease_detection_mobile/features/auth/presentation/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark ? TColors.primary : TColors.dark,
          side: BorderSide(color: isDark ? TColors.primary : TColors.dark,),
        ),
        child: const Icon(Iconsax.arrow_right_3, color: TColors.white,),
      ),
    );
  }
}
