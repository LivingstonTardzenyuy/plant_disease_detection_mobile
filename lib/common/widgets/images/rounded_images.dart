import 'dart:io';
import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.isFileImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final double? height, width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final bool isFileImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;

    if (isNetworkImage) {
      imageProvider = NetworkImage(imageUrl);
    } else if (isFileImage) {
      imageProvider = FileImage(File(imageUrl));
    } else {
      imageProvider = AssetImage(imageUrl);
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: imageProvider,
            fit: fit,
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
