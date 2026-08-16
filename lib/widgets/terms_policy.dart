import 'package:flutter/material.dart';

class TermsPrivacy extends StatelessWidget {
  const TermsPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              text: "By continuing you agree to our ",
              style: TextStyle(color: Color(0xff030303)),
              children: [
                TextSpan(
                  text: "Terms of our Service",
                  style: TextStyle(color: Color((0xff6CAF7A))),
                ),
                TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy and Policy",
                  style: TextStyle(color: Color((0xff6CAF7A))),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
