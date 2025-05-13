import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plant_disease_detection_mobile/app.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';

void main() async{
  await Hive.initFlutter(); // For caching
  await GetStorage.init(); // Initialize storage
  Get.put(ThemeController()); // Inject the theme controller
  runApp(const App());
}
