import 'package:flutter/material.dart';

class greenbutton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const greenbutton({super.key, required this.title, required this.onTap});

  @override
  State<greenbutton> createState() => _greenbuttonState();
}

class _greenbuttonState extends State<greenbutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff53B175),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Color(0xffFFF9FF),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
