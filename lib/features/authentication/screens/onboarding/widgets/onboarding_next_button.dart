import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: TColors.primary,
          side: BorderSide(color: TColors.primary),
        ),
        child: const Icon(Iconsax.arrow_right_3, color: TColors.white,),
      ),
    );
  }
}
