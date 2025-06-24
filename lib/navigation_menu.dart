import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/features/home/screens/home/home_screen.dart';
import 'package:plant_disease_detection_mobile/features/personalization/screens/settings/settings_screen.dart';
import 'package:plant_disease_detection_mobile/features/phone_based_disease_detection/screens/phone_based_disease_detection_screen.dart';
import 'package:plant_disease_detection_mobile/features/report/screens/report_screen.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

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
                  ? TColors.primary.withValues(alpha: 0.2)
                  : TColors.primary.withValues(alpha: 0.2),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(
              icon: Icon(Iconsax.scan_barcode),
              label: "Scan",
            ),
            NavigationDestination(icon: Icon(Iconsax.airplane), label: "Drone"),
            NavigationDestination(
              icon: Icon(Iconsax.document_text),
              label: "Report",
            ),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Account"),
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
    const HomeScreen(),
    PhoneBasedDiseaseDetectionScreen(),
    const Center(child: Text("Drone")),
    const ReportScreen(),
    const SettingsScreen(),
  ];
}
