import 'package:flutter/material.dart';
import 'package:plant_disease_detection_mobile/core/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:plant_disease_detection_mobile/core/constants/colors.dart';
import 'package:plant_disease_detection_mobile/core/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = THelperFunctions.getColor(text);
    final bool isColor = color != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: (value) {},
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
            ? TCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: color,
              )
            : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        shape: isColor ? CircleBorder() : null,
        backgroundColor: isColor ? color : null,
        side: isColor ? BorderSide(color: color) : null,
      ),
    );
  }
}
