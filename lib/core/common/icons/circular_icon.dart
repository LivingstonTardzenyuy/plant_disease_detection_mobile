import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  /// A custom circular Icon widget with background

  /// Properties are:
  /// Container [width], [height], & [background].

  /// Icon's [size], [color], & [onPressed].

  const TCircularIcon({
    super.key,
    this.width,
    this.size = TSizes.lg,
    this.height,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, size, height;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : isDark
                ? TColors.black.withValues(alpha: 0.9)
                : TColors.white.withValues(alpha: 0.9),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
