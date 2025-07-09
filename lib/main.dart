import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plant_disease_detection_mobile/app.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // For caching
  await GetStorage.init(); // Initialize storage
  await SharedPreferences.getInstance(); // Ensure shared_preferences is ready
  Get.put(ThemeController()); // Inject the theme controller
  Get.put(AuthController());
  runApp(const App());
  // // Call checkLoginStatus after the first frame so GetMaterialApp is ready
  // WidgetsBinding.instance.addPostFrameCallback((_) {
  //   authController.checkLoginStatus();
  // });
}
