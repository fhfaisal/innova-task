import 'package:flutter/material.dart';
import 'package:koli_store/color_collections.dart';
import 'package:koli_store/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBgClr,
        appBarTheme: AppBarTheme(
          color: scaffoldBgClr,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DrawerControllerPage()
      home: SplashScreenPage(),
    );
  }
}
