import 'package:flutter/material.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/LeadingWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingWidget(),
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
