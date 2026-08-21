import 'package:flutter/material.dart';
import 'package:login_screen/screens/navbar.dart';
import 'package:login_screen/widgets/greenbutton.dart';
import 'package:login_screen/widgets/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.4),
            Center(child: Image.asset("assets/carrot.png")),
            SizedBox(height: 100.2),
            Text(
              "Loging",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Validator(
              formKey: _formKey,
              passwordlabel: 'Password',
              emaillabel: 'Email',
            ),

            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "ForgotPassword?",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            GreenButton(title: "Login"),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),

                Text("Sign up", style: TextStyle(color: Color(0xff6CAF7A))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
