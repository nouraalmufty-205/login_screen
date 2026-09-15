import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
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
    );
  }
}
