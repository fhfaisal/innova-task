import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:koli_store/screens/drawer_screens/main_screen.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/menubar.dart';
import 'package:koli_store/screens/drawer_screens//profile_screen.dart';
import 'package:koli_store/screens/drawer_screens/favorite_screen.dart';
import 'package:koli_store/screens/drawer_screens/my_card_screen.dart';
import 'package:koli_store/screens/drawer_screens/notification_screen.dart';
import 'package:koli_store/screens/drawer_screens/order_screen.dart';
import 'package:koli_store/screens/navigationbar/navigation.dart';

class DrawerControllerPage extends StatefulWidget {
  const DrawerControllerPage({super.key});

  @override
  State<DrawerControllerPage> createState() => _DrawerControllerPageState();
}

class _DrawerControllerPageState extends State<DrawerControllerPage> {
  MenuItem currentItem = MenuItems.homepage;
  final Map<MenuItem, Widget Function()> _screenMap = {
    MenuItems.homepage: () => CustomBottomNavbar(),
    MenuItems.profile:() => ProfileScreen(),
    MenuItems.myCard: () => MyCardScreen(),
    MenuItems.favorite: () => FavoriteScreen(),
    MenuItems.notifications: () => NotificationScreen(),
    MenuItems.orders: () => OrderScreen(),
  };

  @override
  Widget build(BuildContext context) => ZoomDrawer(
    mainScreen: _screenMap[currentItem]!(),
    menuScreen: MenuPage(
      currentItem: currentItem,
      onSelectedItem: (item) {
        setState(() {
          currentItem = item;
        });
      },
    ),
    slideWidth: MediaQuery.of(context).size.width * 0.35,
    angle: -10.0,
  );
}
