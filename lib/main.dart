// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lettro/pages/home/main_page.dart';
import 'package:lettro/pages/home/progres.dart';
import 'package:lettro/pages/login_page.dart';
import 'package:lettro/pages/splash_page.dart';
import 'package:lettro/pages/succsess_page/succsess_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => MainPage(),
        '/succses': (context) => SuccsesPage(),
        '/progress': (context) => ProgresPage(),
      },
    );
  }
}
