import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  static const _storageKey = 'isDarkMode';
  final _box = GetStorage();

  late Rx<ThemeMode> themeMode;

  @override
  void onInit() {
    super.onInit();
    bool isDark = _box.read(_storageKey) ?? false;
    themeMode = (isDark ? ThemeMode.dark : ThemeMode.light).obs;
  }

  bool get isDarkMode => themeMode.value == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode.value = isOn ? ThemeMode.dark : ThemeMode.light;
    _box.write(_storageKey, isOn); // persist the theme state
    Get.changeThemeMode(themeMode.value);
  }
}
