import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login_screen/screens/accountscreen.dart';
import 'package:login_screen/screens/navbar.dart';
import 'package:login_screen/screens/shopscreen.dart';
import 'package:login_screen/widgets/productdetail.dart';

void main() {
  runApp(GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetail(),
    );
  }
}
