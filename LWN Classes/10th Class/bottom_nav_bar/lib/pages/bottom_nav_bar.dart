import 'package:bottom_nav_bar/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'about_page.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [HomePage(), AboutPage(), SettingsPage()];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // pages.elementAt(_selectedPage),
      pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
      ),
    );
  }
}
