import 'package:flutter/material.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/start.png", fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/whitecarrot.png"),
                SizedBox(height: 35),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                    height: 1.1,
                  ),
                ),
                Text(
                  "to our store",
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyle(color: Color(0xffFCFCFCB2), fontSize: 16),
                ),
                SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  child: GreenButton(title: "Sign Up"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
