import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/widgets/login_signup/form_divider.dart';
import 'package:plant_disease_detection_mobile/common/widgets/login_signup/social_buttons.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Sign up Header
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Sign up Form
              SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
