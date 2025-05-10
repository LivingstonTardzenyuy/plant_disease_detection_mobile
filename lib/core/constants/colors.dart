

import 'package:flutter/material.dart';

class TColors {
  TColors._();

  /// --- App Basic Colors
  static const Color primary = Color(0xFF088A6A);
  static const Color secondary = Color(0xFF8BC34A);    // Fresh lime green
  static const Color accent = Color(0xFFCDDC39);       // Vibrant chartreuse


  /// --- Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  /// --- Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFE8F5E9); // Very light green

  /// --- Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withValues(alpha: 0.1);

  /// --- Button Colors
  static const Color buttonPrimary = Color(0xFF088A6A);
  static const Color buttonSecondary = Color(0xFF689F38); // Forest green
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// --- Border Colors
  static const Color borderPrimary = Color(0xFFC8E6C9); // Soft mint
  static const Color borderSecondary = Color(0xFFCFD8DC);

  /// --- Error and Validation Colors
  static const Color error = Color(0xFFE53935);
  static const Color success = Color(0xFF43A047);
  static const Color warning = Color(0xFFFB8C00);
  static const Color info = Color(0xFF039BE5);

  /// --- Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}