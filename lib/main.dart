import 'package:flutter/material.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/menu_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'favorites': (context) => FavoritesScreen(),
        'profile': (context) => ProfileScreen(),
        'payment': (context) => PaymentScreen(),
        'menu': (context) => MenuScreen(),
      },
    );
  }
}