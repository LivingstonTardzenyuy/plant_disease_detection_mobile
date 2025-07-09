import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/login/login_screen.dart';
import 'package:plant_disease_detection_mobile/navigation_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:plant_disease_detection_mobile/splash_screen.dart'; // Import your SplashScreen

// Ensure AuthController is initialized somewhere, e.g., in main()
// or in an initial binding for your application.
// For example, in your main.dart:
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await GetStorage.init(); // Initialize GetStorage
//   Get.put(ThemeController()); // Put ThemeController
//   Get.put(AuthController()); // Put AuthController
//   runApp(const App());
// }


class App extends StatelessWidget {
  const App({super.key});

  // Keep the navigate logic as a Future
  Future<Widget> _getInitialScreen() async {
    final box = GetStorage();
    final isOnboarded = box.read('isOnboarded') ?? false;

    if (!isOnboarded) {
      return const OnBoardingScreen();
    }

    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');

    // For better robustness, you might also want to check if the accessToken is valid
    // For example, using AuthController's checkLoginStatus logic.
    // However, for initial screen determination, a simple null/empty check is often fine.
    if (accessToken == null || accessToken.isEmpty) {
      return const LoginScreen();
    } else {
      // You might want to trigger AuthController().checkLoginStatus() here
      // if you want to ensure user data is loaded before displaying NavigationMenu.
      // Or, NavigationMenu itself might handle the loading of user data.
      return const NavigationMenu();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ensure ThemeController is available. It should be initialized with Get.put() in main()
    final themeController = Get.find<ThemeController>();

    return GetMaterialApp(
      title: 'Plant Disease Detector', // Better title
      debugShowCheckedModeBanner: false,
      themeMode: themeController.themeMode.value, // Observe themeMode for dynamic theme changes
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      // Use FutureBuilder to handle the asynchronous initial screen determination
      home: FutureBuilder<Widget>(
        future: _getInitialScreen(), // Your async function
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting for the future to complete, show a splash screen
            return const SplashScreen();
          } else if (snapshot.hasError) {
            // If an error occurred, you might want to show an error screen or log it
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Once the future is complete, display the determined screen
            return snapshot.data!;
          }
        },
      ),

      // Define your GetPages for named navigation
      getPages: [
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/nav-menu', page: () => const NavigationMenu()),
        GetPage(name: '/onboarding', page: () => const OnBoardingScreen()),
        // Add other pages and their bindings here, e.g.,
        // GetPage(name: '/home', page: () => const HomeScreen(), binding: HomeBinding()),
        // Make sure to add LoginBinding if you created one for LoginScreen
        // GetPage(name: '/login', page: () => const LoginScreen(), binding: LoginBinding()),
      ],
    );
  }
}