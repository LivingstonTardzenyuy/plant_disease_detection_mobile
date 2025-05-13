import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';

class ReportItem extends StatelessWidget {
  final String title;
  final String time;

  const ReportItem({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(Iconsax.document, color: TColors.secondary),
      title: Text(title),
      trailing: Text(
        time,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
