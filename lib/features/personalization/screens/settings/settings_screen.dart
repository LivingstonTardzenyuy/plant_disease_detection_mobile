import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:plant_disease_detection_mobile/common/widgets/list_tile/profile_list_tile.dart';
import 'package:plant_disease_detection_mobile/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:plant_disease_detection_mobile/common/widgets/texts/section_heading.dart';
import 'package:plant_disease_detection_mobile/features/personalization/screens/address/user_address_screen.dart';
import 'package:plant_disease_detection_mobile/features/personalization/screens/profile/profile_screen.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/theme/theme_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  TAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),

                  /// --- User Profile Card
                  TUserProfileTitle(
                    onPressed: () => Get.to(() => ProfileScreen()),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --- Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Account settings
                  TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  /// --- App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle:
                        'Use high-resolution images (more data & battery)',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Enable Notifications',
                    subTitle: 'Receive alerts for disease detection and news',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.moon,
                    title: 'Enable Dark Mode',
                    subTitle: 'Reduce eye strain & save battery at night',
                    trailing: Obx(
                      () => Switch(
                        value: themeController.isDarkMode,
                        onChanged: themeController.toggleTheme,
                        activeColor: TColors.primary,
                      ),
                    ),
                  ),

                  /// --- Support & Others
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: "Support & Others",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.info_circle,
                    title: 'About the App',
                    subTitle: 'Version, developer & license info',
                  ),

                  TSettingsMenuTile(
                    icon: Icons.bug_report_outlined,
                    title: 'Report a Bug',
                    subTitle: 'Let us know if something isn\'t working',
                  ),

                  /// --- Logout Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Text('logout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
