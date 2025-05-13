import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';
import 'package:plant_disease_detection_mobile/utils/helpers/helper_functions.dart';

class WeatherReport extends StatelessWidget {
  const WeatherReport({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: isDarkMode ? TColors.dark: TColors.light,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bambili, 12 May",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2),

                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: [
                    Text('Weather: 28°C |'),
                    Text('Humidity: 65% |'),
                    Text('Wind 10km/h'),
                  ],
                ),
              ],
            ),
          ),
          Icon(Iconsax.sun_1, color: Colors.orange, size: TSizes.iconLg * 2),
        ],
      ),
    );
  }
}
