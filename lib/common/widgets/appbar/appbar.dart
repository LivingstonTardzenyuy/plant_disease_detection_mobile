import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/device/device_utility.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.background = TColors.primary,
    this.bottom,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? background;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: background,
      leading:
          showBackArrow
              ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  // color: isDark ? TColors.white : TColors.black,
                  color: TColors.white
                ),
              )
              : leadingIcon != null
              ? IconButton(
                onPressed: leadingOnPressed,
                icon: Icon(
                  leadingIcon,
                  color: isDark ? TColors.white : TColors.black,
                ),
              )
              : null,
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom == null ? TDeviceUtils.getAppBarHeight() : TDeviceUtils.getAppBarHeight() * 2.3 );
}
