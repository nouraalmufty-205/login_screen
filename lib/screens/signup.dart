import 'package:flutter/material.dart';
import 'package:login_screen/screens/navbar.dart';
import 'package:login_screen/widgets/greenbutton.dart';

import 'package:login_screen/widgets/terms_policy.dart';
import 'package:login_screen/widgets/validator.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(child: Image.asset('assets/carrot.png')),
              SizedBox(height: 100.21),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Validator(
                formKey: _formKey,
                passwordlabel: "Password",
                emaillabel: "Email",
              ),

              const TermsPrivacy(),
              SizedBox(height: 10),
              GreenButton(title: "Sign up"),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6CAF7A),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
