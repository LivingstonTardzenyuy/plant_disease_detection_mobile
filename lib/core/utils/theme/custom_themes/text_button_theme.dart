import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';

class TTextButtonThemeData {
  TTextButtonThemeData._();

  /// --- light theme
  static TextButtonThemeData lightElevatedButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      // Text Style
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
      // Colors
      foregroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,

    ),
  );

  /// --- dark theme
  static TextButtonThemeData darkElevatedButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      // Text Style
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      // Colors
      foregroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,

    ),
  );
}
