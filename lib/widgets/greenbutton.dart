import 'package:flutter/material.dart';

class greenbutton extends StatelessWidget {
  final String title;
  const greenbutton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff53B175),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xffFFF9FF),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
