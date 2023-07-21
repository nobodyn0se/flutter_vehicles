import 'package:flutter/material.dart';

class OpaqueContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;

  const OpaqueContainer(
      {super.key, required this.height, required this.width, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
