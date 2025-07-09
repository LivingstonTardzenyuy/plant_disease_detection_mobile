import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';

class SettingsController extends GetxController {
  static SettingsController get instance => Get.find();

  final themeController = Get.find<ThemeController>();
  final authController = Get.find<AuthController>();
}
