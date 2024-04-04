import 'package:flutter/material.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';

///Linear Horizontal Divider
class LinearHorizontalDivider extends StatelessWidget {
  ///Default Constructor
  const LinearHorizontalDivider({
    super.key,
    this.color,
    this.width,
    this.height = 2,
    this.thickness = 0.6,
  });

  final Color? color;
  final double? height;
  final double? thickness;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? context.width,
        child: Divider(
          color: color ?? Colors.grey[300],
          height: height,
          thickness: thickness,
        ),
      ),
    );
  }
}
