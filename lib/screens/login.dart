import 'package:flutter/material.dart';
import 'package:login_screen/widgets/greenbutton.dart';
import 'package:login_screen/widgets/user_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
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

              SizedBox(height: 10),
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
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "ForgotPassword?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 30),
              greenbutton(title: "Login"),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don' have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),

                  Text("Sign up", style: TextStyle(color: Color(0xff6CAF7A))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
