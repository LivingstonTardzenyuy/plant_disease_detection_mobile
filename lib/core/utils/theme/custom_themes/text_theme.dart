import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  /// Customizing light text theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.black,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24, fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),


    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16, fontWeight: FontWeight.w500,
      color: TColors.black,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),


    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.black,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.black.withValues(alpha: 0.5),
    ),


    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.black.withValues(alpha: 0.5),
    ),
  );


  /// Customizing dark text theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.white,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24, fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),


    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16, fontWeight: FontWeight.w500,
      color: TColors.white,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),


    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.white,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.white.withValues(alpha: 0.5),
    ),


    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.white.withValues(alpha: 0.5),
    ),
  );
}
