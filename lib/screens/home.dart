import 'package:flutter/material.dart';

import 'apps.dart';
import 'games.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with TickerProviderStateMixin {

  TabController? _tabController;
  int currentIndex = 0;


  final pages = const [
    GamesScreen(),
    AppsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, initialIndex: 0, length: pages.length);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: const Text("AIR STORE HOME"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.app_shortcut, size: 25),
              label: "Apps",
              activeIcon: Icon(Icons.app_shortcut, size: 25),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports_outlined, size: 20),
              label: "Games",
              activeIcon: Icon(Icons.sports_esports_outlined, size: 25),
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    ));
  }
}
