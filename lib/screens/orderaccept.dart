import 'package:flutter/material.dart';
import 'package:login_screen/screens/navbar.dart';
import 'package:login_screen/screens/home/shopscreen.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class AcceptedOrder extends StatelessWidget {
  const AcceptedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(flex: 2),
                Image.asset('assets/accepted.png', height: 240, width: 270),
                const SizedBox(height: 66),
                Text(
                  "Your Order has been "
                  "accepted",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Text(
                  "Your items has been placed and are on there way to being processed",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
                ),
                const Spacer(flex: 3),
                GreenButton(
                  title: "Track Order",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarScreen(),
                      ),
                    );
                    const SizedBox(height: 24);
                  },
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                  child: Text(
                    "Back To Home",
                    style: TextStyle(color: Color(0xff181725)),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarScreen(),
                      ),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
