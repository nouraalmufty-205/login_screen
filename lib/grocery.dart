import 'package:flutter/material.dart';
import 'package:login_screen/screens/login.dart';
import 'package:login_screen/screens/signup.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
