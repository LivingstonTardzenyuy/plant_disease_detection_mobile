import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/password_configurations/forget_password_screen.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/signup/signup_screen.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/login_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';
import 'package:plant_disease_detection_mobile/utils/validators/validation.dart'; // For form field validation

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the LoginController. Get.put() makes it available globally
    // and its lifecycle is managed by GetX.
    final LoginController controller = Get.find<LoginController>();
    // Get the AuthController instance (it should already be put higher up, e.g., in main.dart)
    // final AuthController authController = Get.find<AuthController>();

    return Form(
      key: controller.loginFormKey, // Use the form key from the controller
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email/Username
            TextFormField(
              controller: controller.username,
              // Use controller's TextEditingController
              validator:
                  (value) => TValidator.validateEmptyText('username', value),
              // Assuming validateEmail works for username or you have a separate validator
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                // Changed from Iconsax.user_edit for email
                labelText: TTexts.username, // Text label for email/username
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Password
            Obx(
              () => TextFormField(
                // Wrap with Obx to react to obscurePassword changes
                controller: controller.password,
                // Use controller's TextEditingController
                validator: (value) => TValidator.validatePassword(value),
                // Assuming you have password validation
                obscureText: controller.obscurePassword.value,
                // Use RxBool from controller
                decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  // Changed from direct_right for password
                  labelText: TTexts.password,
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.obscurePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye,
                    ),
                    onPressed:
                        () =>
                            controller.obscurePassword.value =
                                !controller.obscurePassword.value,
                  ),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// Forget Password Button
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                child: const Text(TTexts.forgetPassword),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Sign in Button
            SizedBox(
              width: double.infinity,
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: TColors.primary.withValues(
                      alpha: 0.7,
                    ),
                  ),
                  onPressed:
                      controller
                              .authController
                              .isLoading
                              .value // Observe isLoading from AuthController
                          ? null // Disable button when loading
                          : controller.signIn,
                  // Call the signIn method from the LoginController
                  child:
                      controller.authController.isLoading.value
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(TTexts.signIn),
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                // Navigates to SignUpScreen
                child: const Text(TTexts.createAccount),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
