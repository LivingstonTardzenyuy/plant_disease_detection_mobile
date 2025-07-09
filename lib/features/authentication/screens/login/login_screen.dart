import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/styles/spacing_styles.dart';
import 'package:plant_disease_detection_mobile/common/widgets/login_signup/form_divider.dart';
import 'package:plant_disease_detection_mobile/common/widgets/login_signup/social_buttons.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/login_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/signup_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/login/widgets/login_form.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/login/widgets/login_header.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.spacingWithAppBarHeight,
          child: Column(
            children: [
              SizedBox(height: TDeviceUtils.getAppBarHeight()),

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
