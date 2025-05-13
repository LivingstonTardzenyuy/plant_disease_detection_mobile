import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/password_configurations/reset_password_screen.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Headings
                Text(
                  TTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                Text(
                  TTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Email Text Field
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email,
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPasswordScreen()),
                    child: Text(TTexts.submit),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
