import 'package:flutter/material.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/menu_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MenuScreen(),
        title: Text('MyCard'),
      ),
      body: Center(
        child: Text('Order'),
      ),
    );
  }
}
