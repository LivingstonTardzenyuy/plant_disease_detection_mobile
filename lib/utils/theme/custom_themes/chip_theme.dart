import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';

class TChipThemeData {
  TChipThemeData._();

  /// --- light theme
  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: TColors.white,
  );

  /// --- dark theme
  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: TColors.grey,
    labelStyle: const TextStyle(color: TColors.white),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: TColors.white,
  );

}