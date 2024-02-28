import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/features/apps/pages/apps_page.dart';

import '../../../core/presentation/components/app_drawer.dart';
import '../../../core/presentation/components/search.dart';
import '../../books/pages/books_screen.dart';
import '../../games/pages/games_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;

  final pages = const <Widget>[
    AppsPage(),
    GamesPage(),
    BooksScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: pages.length);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 100),
          child: const Column(
            children: [
              Search(),
            ],
          ),
        ),
        drawer: const AppDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.app_shortcut, size: 30),
              label: l10n.apps,
              activeIcon: const Icon(Icons.app_shortcut, size: 30),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.sports_esports_outlined, size: 30),
              label: l10n.games,
              activeIcon: const Icon(Icons.sports_esports_outlined, size: 30),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.book_rounded, size: 30),
              label: l10n.books,
              activeIcon: const Icon(Icons.book_outlined, size: 30),
              backgroundColor: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            debugPrint('Current Index $currentIndex');
          },
        ),
        body: pages[currentIndex],
      ),
    );
  }
}
