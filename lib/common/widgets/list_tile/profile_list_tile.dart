import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/circular_image.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key, this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    return ListTile(
      leading: TCircularImage(
        image: TImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "${authController.userProfile.value!.firstName} ${authController.userProfile.value!.lastName}",
        style: Theme.of(context).textTheme.headlineSmall!.apply(
          color: TColors.white,
        ),
      ),
      subtitle: Text(
        authController.userProfile.value!.email,
        style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: TColors.white,
        ),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: TColors.white,),
      ),
    );
  }
}
