import 'package:flutter/material.dart';

/// A custom clipper that creates a curved bottom edge.
class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    // Start from the top-left corner
    path.lineTo(0, size.height);

    // Define the first curve on the left side
    final firstController = Offset(0, size.height - 20);
    final firstEnd = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstController.dx, firstController.dy, firstEnd.dx, firstEnd.dy);

    // Define the second (middle) curve that extends across the width
    final secondController = Offset(0, size.height - 20);
    final secondEnd = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondController.dx, secondController.dy, secondEnd.dx, secondEnd.dy);

    // Define the third curve on the left side
    final thirdController = Offset(size.width, size.height - 20);
    final thirdEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdController.dx, thirdController.dy, thirdEnd.dx, thirdEnd.dy);

    // Draw a straight line from the bottom-right to the top-right corner
    path.lineTo(size.width, 0);

    // Close the path to complete the shape
    path.close();

    return path;
  }

  /// Returns `true` so that the clipper rebuilds whenever necessary
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
