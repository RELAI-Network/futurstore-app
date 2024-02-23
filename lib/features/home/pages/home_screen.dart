import 'package:flutter/material.dart';

import '../../../components/app_drawer.dart';
import '../../../components/search.dart';
import '../../apps/pages/apps_screen.dart';
import '../../books/pages/books_screen.dart';
import '../../games/pages/games_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;

  final pages = const [
    AppsScreen(),
    GamesScreen(),
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.app_shortcut, size: 30),
              label: 'Apps',
              activeIcon: Icon(Icons.app_shortcut, size: 30),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports_outlined, size: 30),
              label: GamesScreen.label,
              activeIcon: Icon(Icons.sports_esports_outlined, size: 30),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded, size: 30),
              label: BooksScreen.label,
              activeIcon: Icon(Icons.book_outlined, size: 30),
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