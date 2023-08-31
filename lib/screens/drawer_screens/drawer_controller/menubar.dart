import 'package:flutter/material.dart';
import 'package:koli_store/color_collections.dart';

class MenuItem {
  String? title;
  IconData? icon;

  MenuItem({required this.title, required this.icon});
}

class MenuItems {
  static final profile =
      MenuItem(title: "Profile", icon: Icons.person_2_outlined);
  static final homepage =
      MenuItem(title: "Home Page", icon: Icons.home_outlined);
  static final myCard = MenuItem(title: "My Card", icon: Icons.credit_card);
  static final favorite =
      MenuItem(title: "Favorites", icon: Icons.favorite_border);
  static final orders =
      MenuItem(title: "Orders", icon: Icons.car_crash_outlined);
  static final notifications = MenuItem(
      title: "Notifications", icon: Icons.notifications_active_outlined);

  static List<MenuItem> all = [
    profile,
    homepage,
    myCard,
    favorite,
    orders,
    notifications,
  ];
}

class MenuPage extends StatelessWidget {
  MenuPage({Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);
  final currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: drawerBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
             Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'),),
                  SizedBox(height: 20,),
                  Text('Hey,👋',style: TextStyle(fontSize: 16,color: Colors.grey,)),
                  SizedBox(height: 10,),
                  Text('Alisson Becker',style: TextStyle(fontSize: 20,color: textWhite,),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 2,width: 100,color: Colors.grey,),
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.logout,
                size: 25,
                color: Colors.grey,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selected: currentItem == item,
          selectedTileColor: Colors.black,
          minLeadingWidth: 20,
          leading: Icon(
            item.icon,
            size: 25,
            color: Colors.grey,
          ),
          title: Text(
            item.title!,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onTap: () => onSelectedItem(item),
        ),
      );
}
