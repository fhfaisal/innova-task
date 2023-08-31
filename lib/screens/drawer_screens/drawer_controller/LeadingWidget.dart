import 'package:flutter/material.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/menu_screen.dart';

import '../../../color_collections.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: CircleAvatar(
          backgroundColor: textWhite,
          child: MenuScreen()),
    );
  }
}