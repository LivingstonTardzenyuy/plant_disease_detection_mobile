import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';

class TAppBarTheme {
  TAppBarTheme._();

  /// --- light mode AppBarTheme
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: TColors.black,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: TColors.black,
      size: 24,
    ),

    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
  );

  /// --- dark mode AppBarTheme
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: TColors.black,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: TColors.white,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: TColors.textWhite,
    ),
  );
}
