import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/login/login_screen.dart';
import 'package:plant_disease_detection_mobile/navigation_menu.dart';

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
      initialRoute: '/nav-menu',
      getPages: [
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/nav-menu', page: () => const NavigationMenu()),
      ],
    );
  }
}