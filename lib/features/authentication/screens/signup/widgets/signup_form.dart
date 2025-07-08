import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/signup_controller.dart'; // Import the new controller
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';
import 'package:plant_disease_detection_mobile/utils/validators/validation.dart'; // Still needed for validation logic

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the controller. Get.put() ensures it's created and available.
    // If you're using Get.find() elsewhere for this controller, ensure it's put somewhere higher up.
    // For a form, Get.put() here is often fine as it's scoped to this widget's lifecycle.
    final SignUpController controller = Get.put(SignUpController());

    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      key: controller.signupFormKey, // Use the form key from the controller
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName, // Use controller's TextEditingController
                  validator: (value) => TValidator.validateEmptyText('First name', value),
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName, // Use controller's TextEditingController
                  validator: (value) => TValidator.validateEmptyText('Last name', value),
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            controller: controller.username, // Use controller's TextEditingController
            validator: (value) => TValidator.validateEmptyText('Username', value),
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            controller: controller.email, // Use controller's TextEditingController
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          Obx(() => TextFormField(
            controller: controller.password, // Use controller's TextEditingController
            validator: (value) => TValidator.validatePassword(value),
            obscureText: controller.obscurePassword.value, // Use RxBool from controller
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                icon: Icon(controller.obscurePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                onPressed: () => controller.obscurePassword.value = !controller.obscurePassword.value,
              ),
            ),
          )),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          Obx(() => TextFormField(
            controller: controller.confirmPassword, // Use controller's TextEditingController
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password.';
              }
              // Password comparison is now handled in the controller's signup() method
              // For immediate UI feedback, you can keep this basic check here
              if (value != controller.password.text) {
                return 'Passwords do not match.';
              }
              return null;
            },
            obscureText: controller.obscureConfirmPassword.value, // Use RxBool from controller
            decoration: InputDecoration(
              labelText: TTexts.confirmPassword,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                icon: Icon(controller.obscureConfirmPassword.value ? Iconsax.eye_slash : Iconsax.eye),
                onPressed: () => controller.obscureConfirmPassword.value = !controller.obscureConfirmPassword.value,
              ),
            ),
          )),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Terms and Conditions Checkbox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Obx(() => Checkbox(
                  value: controller.agreeToTerms.value, // Use RxBool from controller
                  onChanged: (value) => controller.agreeToTerms.value = value ?? false,
                )),
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '${TTexts.iAgreeTo} ',
                          style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(
                        text: '${TTexts.privacyPolicy} ',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? TColors.white : TColors.primary,
                        ),
                        // recognizer: TapGestureRecognizer()..onTap = () { /* Navigate */ },
                      ),
                      TextSpan(
                          text: '${TTexts.and} ',
                          style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(
                        text: TTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? TColors.white : TColors.primary,
                        ),
                        // recognizer: TapGestureRecognizer()..onTap = () { /* Navigate */ },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.signup, // Call the signup method from the controller
              child: Obx(() => controller.authController.isLoading.value
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text(TTexts.createAccount)),
            ),
          ),
        ],
      ),
    );
  }
}