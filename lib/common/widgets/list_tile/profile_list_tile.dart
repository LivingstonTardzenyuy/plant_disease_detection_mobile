import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/circular_image.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key, this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Signe Josue",
        style: Theme.of(context).textTheme.headlineSmall!.apply(
          color: TColors.white,
        ),
      ),
      subtitle: Text(
        "signeemmenuel28@gmail.com",
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
