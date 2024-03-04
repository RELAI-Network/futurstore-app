import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    required this.margin,
    super.key,
    this.width = 1,
    this.height = 10,
    this.color = Colors.grey,
  });
  final double width;
  final double height;
  final Color color;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      margin: margin,
    );
  }
}
