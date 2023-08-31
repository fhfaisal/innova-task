import 'package:flutter/material.dart';
import 'package:koli_store/color_collections.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/drawer_controller_page.dart';
import 'package:koli_store/screens/drawer_screens/favorite_screen.dart';
import 'package:koli_store/screens/drawer_screens/main_screen.dart';
import 'package:koli_store/screens/drawer_screens/my_card_screen.dart';
import 'package:koli_store/screens/drawer_screens/notification_screen.dart';
import 'package:koli_store/screens/drawer_screens/profile_screen.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    MainScreen(),
    FavoriteScreen(),
    MyCardScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        showSelectedLabels: false,
        showUnselectedLabels: false, // Show labels for the unselected items
        backgroundColor: scaffoldBgClr,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: ""
          ),
        ],
        currentIndex: _currentIndex,
      ),
    );
  }
}
