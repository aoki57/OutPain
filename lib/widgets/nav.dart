import 'package:flutter/material.dart';
import 'package:tubes/pages/home.dart';
import 'package:tubes/pages/notification.dart';
import 'package:tubes/pages/profile.dart';
import 'package:tubes/pages/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    super.key,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    Notif(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
            ),
          ),
        ],
        onTap: onTabTapped,
      ),
    );
  }
}
