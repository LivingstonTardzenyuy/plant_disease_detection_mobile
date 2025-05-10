import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/common/styles/spacing_styles.dart';
import 'package:plant_disease_detection_mobile/core/common/widgets/login_signup/form_divider.dart';
import 'package:plant_disease_detection_mobile/core/common/widgets/login_signup/social_buttons.dart';
import 'package:plant_disease_detection_mobile/core/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/core/constants/text_strings.dart';
import 'package:plant_disease_detection_mobile/features/auth/presentation/login/widgets/login_form.dart';
import 'package:plant_disease_detection_mobile/features/auth/presentation/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.spacingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and sub title
              LoginHeading(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: 'or sign in with'),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

