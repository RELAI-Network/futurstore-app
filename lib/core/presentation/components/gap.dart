import 'package:flutter/widgets.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.height = AppSpacing.lg});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
