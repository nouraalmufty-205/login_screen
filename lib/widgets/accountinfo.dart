import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(
              image: AssetImage('assets/profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Afsar Hossen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              "Imshuvo97@gmail.com",
              style: TextStyle(color: Color(0xff7C7C7C), fontSize: 16),
            ),
          ],
        ),
      ],
    );
    ;
  }
}
