import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final AuthController authController = Get.find<AuthController>();

  final Rx<int> carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
