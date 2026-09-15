import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final String title;
  final IconData icon;
  const AccountOption({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(icon, size: 28),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 18),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade300),
        ],
      ),
    );
  }
}
