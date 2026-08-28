import 'package:flutter/material.dart';
import 'package:login_screen/widgets/accountinfo.dart';
import 'package:login_screen/widgets/accountoption.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          AccountInfo(),
          Divider(),
          AccountOption(title: "Order", icon: Icons.shopping_bag_outlined),
          AccountOption(title: "My Details", icon: Icons.badge_outlined),
          AccountOption(
            title: "Delivery Address",
            icon: Icons.location_on_outlined,
          ),
          AccountOption(
            title: "Payment Methods",
            icon: Icons.credit_card_outlined,
          ),
          AccountOption(
            title: "Promo Code",
            icon: Icons.confirmation_num_outlined,
          ),
          AccountOption(
            title: "Notification",
            icon: Icons.notifications_none_outlined,
          ),

          AccountOption(title: "Help", icon: Icons.help_outline),
          AccountOption(title: "About", icon: Icons.info_outline),
          SizedBox(height: 30),
          SizedBox(
            width: 370,
            height: 67,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffF2F3F2),
                foregroundColor: Color(0xff53B175),
              ),
              child: Row(
                children: [
                  Icon(Icons.logout_outlined, size: 20),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
