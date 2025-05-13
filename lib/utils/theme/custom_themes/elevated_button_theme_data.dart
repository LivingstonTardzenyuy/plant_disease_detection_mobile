import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';

class TElevatedButtonThemeData {
  TElevatedButtonThemeData._();

  /// --- light theme
  static ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: TColors.white,
        fontWeight:  FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// --- dark theme
  static ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: TColors.white,
        fontWeight:  FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}