import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/screens/download2.dart';
import 'package:movies_app/screens/download_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/profile_screen.dart';
import 'package:movies_app/screens/saved_screen.dart';
import 'package:movies_app/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    SavedScreen(),
    DownloadScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        children: [
          _screens[_currentIndex],
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff26233e),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.white,
            iconSize: 20,
            currentIndex: _currentIndex,
            onTap: (int value) {
              setState(() {
                _currentIndex = value;
                _pageController.jumpToPage(value);
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bookmark), label: 'Saved'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.download_circle),
                  label: 'Downloads'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: 'Me'),
            ],
          ),
        ),
      ),
    );
  }
}
