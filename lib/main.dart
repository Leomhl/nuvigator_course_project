import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
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
      home: Nuvigator.routes(
        initialRoute: 'home',
        screenType: materialScreenType,
        routes: [
          NuRouteBuilder(path: 'home', builder: (_, __, ___) => HomeScreen()),
          NuRouteBuilder(path: 'favorites', builder: (_, __, ___) => FavoritesScreen()),
          NuRouteBuilder(path: 'profile', builder: (_, __, ___) => ProfileScreen()),
          NuRouteBuilder(path: 'payment', builder: (_, __, ___) => PaymentScreen()),
          NuRouteBuilder(path: 'menu', builder: (_, __, ___) => MenuScreen()),
        ],
      ),
    );
  }
}