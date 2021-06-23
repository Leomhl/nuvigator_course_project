import 'package:flutter/material.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/package_details_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/producer_details_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/singup_screen.dart';

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
        'login': (context) => LoginScreen(),
        'sing-up': (context) => SingupScreen(),
        'favorites': (context) => FavoritesScreen(),
        'profile': (context) => ProfileScreen(),
        'payment': (context) => PaymentScreen(),
        'producer-details': (context) => ProducerDetailsScreen(),
        'package-details': (context) => PackageDetailsScreen(),
      },
    );
  }
}