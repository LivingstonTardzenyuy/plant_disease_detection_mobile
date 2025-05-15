import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class TSearchBar extends StatelessWidget {
  final String hintText;

  const TSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.symmetric(horizontal: TSizes.md),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black.withValues(alpha: 0.3)),
        prefixIcon: Icon(Iconsax.search_normal_1, size: TSizes.iconMd),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(50),
        //   borderSide: BorderSide.none,
        // ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
