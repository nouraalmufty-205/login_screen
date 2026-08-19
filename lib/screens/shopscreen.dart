import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/carrot.png")),
        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on),
            Text(
              "Dhaka, Banassre",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                    hintText: "Search Store",
                    hintStyle: TextStyle(),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 43,
                      maxWidth: 40,
                    ),
                    prefixIcon: Icon(Icons.search, color: Color(0xff181B19)),
                    filled: true,
                    fillColor: Colors.grey[70],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
