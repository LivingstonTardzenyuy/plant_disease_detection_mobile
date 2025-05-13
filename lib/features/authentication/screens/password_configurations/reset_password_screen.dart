import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title and Sub Title
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              Text(
                TTexts.changeYourPasswordSubtle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(TTexts.done),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: Text(TTexts.recentEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
