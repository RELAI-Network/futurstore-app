import 'package:flutter/material.dart';

/// Category tab
class CategoryTab extends StatelessWidget {
  /// Category tab
  const CategoryTab({
    required this.categoryName,
    this.onDoubleTap,
    super.key,
  });

  /// Category name
  final String categoryName;

  /// On double tap
  final VoidCallback? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Text(categoryName.toUpperCase()),
    );
  }
}
