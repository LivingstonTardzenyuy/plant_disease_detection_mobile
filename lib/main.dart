import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plant_disease_detection_mobile/my_app.dart';

void main() async{
  await Hive.initFlutter(); // For caching
  runApp(const MyApp());
}
