import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/utils/device/device_utility.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? TColors.dark : TColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: isDark ? TColors.white : TColors.primary,
      
        tabs: tabs
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
