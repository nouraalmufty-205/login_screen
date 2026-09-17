import 'package:flutter/material.dart';

class Groceries extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  const Groceries({
    super.key,
    required this.image,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 248.18,
          height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),

            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40,
                  child: Image.asset(image, height: 100, width: 100),
                ),
                const SizedBox(width: 15),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3E423F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
