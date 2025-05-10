import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          elevation: 0,
          height: 80,
          backgroundColor: isDark ? TColors.black : TColors.white,
          indicatorColor:
              isDark
                  ? TColors.white.withValues(alpha: 0.1)
                  : TColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        );
      }),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
    );
  }
}

class NavigationMenuController extends GetxController {
  static NavigationMenuController get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Scaffold(
      body: SingleChildScrollView(child: Column(children: [Text("Home")])),
    ),
    Scaffold(
      body: SingleChildScrollView(child: Column(children: [Text("Capture")])),
    ),
    Scaffold(
      body: SingleChildScrollView(child: Column(children: [Text("History")])),
    ),
    Scaffold(
      body: SingleChildScrollView(child: Column(children: [Text("Profile")])),
    ),

  ];
}
