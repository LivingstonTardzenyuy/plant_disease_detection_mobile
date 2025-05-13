import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final Color color;
  final String label;
  final int percentage;

  const StatusCard({
    super.key,
    required this.color,
    required this.label,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            '$percentage%',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: color,
            ),
          ),
          const SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 14, color: color)),
        ],
      ),
    );
  }
}
