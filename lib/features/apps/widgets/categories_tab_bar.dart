import 'package:flutter/material.dart';

/// Categories tab bar
class CategoriesTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// Categories tab bar
  const CategoriesTabBar({
    required this.controller,
    required this.tabs,
    super.key,
  });

  /// Tab controller
  final TabController controller;

  /// Tabs
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 48);
}
