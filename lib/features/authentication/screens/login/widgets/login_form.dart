import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/password_configurations/forget_password_screen.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/signup/signup_screen.dart';
import 'package:plant_disease_detection_mobile/navigation_menu.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),

            /// Remember me an forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            /// Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(NavigationMenu()),
                child: Text(TTexts.signIn),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            /// Sign in Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}