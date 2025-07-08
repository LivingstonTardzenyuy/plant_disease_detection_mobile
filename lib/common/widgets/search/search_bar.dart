import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class TSearchBar extends StatelessWidget {
  final String hintText;

  const TSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.symmetric(horizontal: TSizes.md),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge!.apply(color: isDark ? TColors.white.withValues(alpha: 0.7) : Colors.black.withValues(alpha: 0.3)),
        prefixIcon: Icon(Iconsax.search_normal_1, size: TSizes.iconMd),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(50),
        //   borderSide: BorderSide.none,
        // ),
        filled: true,
        fillColor: isDark ? TColors.black : Colors.white,
      ),
    );
  }
}
