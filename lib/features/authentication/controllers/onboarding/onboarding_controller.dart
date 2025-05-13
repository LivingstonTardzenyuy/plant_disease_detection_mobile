import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/screens/login/login_screen.dart';


class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// --- variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// --- Update Current Index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  /// --- Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// --- Update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      currentPageIndex.value = currentPageIndex.value + 1;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  /// --- update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}