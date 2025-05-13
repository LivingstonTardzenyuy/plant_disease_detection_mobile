import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
              ? TColors.darkerGrey
              : TColors.grey,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? isDark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Deo',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '(+237) 677 87 69 63',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '#2345 Timmy Coves, South Lines, Mains, #7665, USA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
