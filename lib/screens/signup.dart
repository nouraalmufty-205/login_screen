import 'package:flutter/material.dart';
import 'package:login_screen/screens/navbar.dart';
import 'package:login_screen/widgets/greenbutton.dart';
import 'package:login_screen/widgets/user_input.dart';
import 'package:login_screen/widgets/terms_policy.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordHidden = true;
  bool isPasswordValid = false;
  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              UserInput(labelText: "Username", controller: usernameController),
              SizedBox(height: 30),
              UserInput(
                labelText: "Email",
                controller: emailController,
                onChanged: (value) {
                  setState(() {
                    isEmailValid = value.contains('@');
                  });
                },
                suffixIcon: isEmailValid
                    ? const Icon(Icons.check, color: Colors.green)
                    : null,
              ),

              if (!isEmailValid && emailController.text.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(top: 4, left: 8),
                  child: Text(
                    "Invaild Email",
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
              SizedBox(height: 30),
              UserInput(
                labelText: "Password",
                controller: passwordController,
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                ),
                obscureText: isPasswordHidden,
                onChanged: (value) {
                  setState(() {
                    isPasswordValid = RegExp(
                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$',
                    ).hasMatch(value);
                  });
                },
              ),
              if (!isPasswordValid && passwordController.text.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(top: 4, left: 8),
                  child: Text(
                    "Password invalid needs 8+ chars, upper, lower, and a number",
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),

              SizedBox(height: 10),

              const TermsPrivacy(),
              SizedBox(height: 10),
              greenbutton(
                title: "Sign Up",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBarScreen(),
                    ),
                    (route) => false,
                  );
                },
              ),

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
