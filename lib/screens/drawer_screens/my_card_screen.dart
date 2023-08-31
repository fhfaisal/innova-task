import 'package:flutter/material.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/LeadingWidget.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/menu_screen.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingWidget(),
        title: Text('MyCard'),
      ),
      body: Center(
        child: Text('MyCard'),
      ),
    );
  }
}
