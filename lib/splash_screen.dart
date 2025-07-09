import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart'; // Assuming you have image constants
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(isDarkMode ? TImages.lightAppLogo : TImages.darkAppLogo),
              width: 150, // Adjust size as needed
              height: 150,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('Loading...', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}