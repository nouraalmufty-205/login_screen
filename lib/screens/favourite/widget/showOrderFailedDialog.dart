import 'package:flutter/material.dart';
import 'package:login_screen/widgets/greenbutton.dart';

void showOrderFailedDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.5),
    builder: (context) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: const Color(0xffE8F5E9),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/shopping.png",
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Oops! Order Failed",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Something went terribly wrong.",
              style: TextStyle(color: Color(0xff7C7C7C)),
            ),
            const SizedBox(height: 24),
            GreenButton(
              title: "Please Try Again",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text(
                "Back to home",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),
    ),
  );
}
