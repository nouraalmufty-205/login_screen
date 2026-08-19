import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String title;
  const GreenButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff53B175),
          foregroundColor: Color(0xffFFF9FF),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
