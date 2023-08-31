import 'package:flutter/material.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/menu_screen.dart';

import 'drawer_controller/LeadingWidget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingWidget(),
        title: Text('Favorite'),
      ),
      body: Center(
        child: Text('Favorite'),
      ),
    );
  }
}