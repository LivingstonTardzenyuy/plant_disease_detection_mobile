import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';

import 'features/authentication/screens/onboarding/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeController.themeMode.value,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}