import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        // SizedBox(
        //   width: TSizes.spaceBtwItems,
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: TColors.grey),
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Image(
        //       width: TSizes.iconMd,
        //       height: TSizes.iconMd,
        //       image: AssetImage(TImages.facebook),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
