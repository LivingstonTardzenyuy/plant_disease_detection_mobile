import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/core/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/core/constants/text_strings.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';

class LoginHeading extends StatelessWidget {
  const LoginHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            isDark ? TImages.darkAppLogo : TImages.lightAppLogo,
          ),
          height: 150,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
