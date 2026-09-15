import 'package:flutter/material.dart';
import 'package:login_screen/models/favouitemodel.dart';
import 'package:login_screen/screens/cartscreen.dart';
import 'package:login_screen/screens/favourite/widget/favorite_product.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Center(
          child: Text(
            "Favourite",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 32),
        const Divider(color: Color(0xffE2E2E2)),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: items.length,
            separatorBuilder: (context, index) =>
                const Divider(color: Color(0xffE2E2E2), height: 1),

            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: FavouriteProduct(item: items[index]),
            ),
          ),
        ),
        GreenButton(
          title: "ADD All to Cart",
          onPressed: () {
            final success = false; // placeholder
            if (success) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            } else {
              showOrderFailedDialog(context);
            }
          },
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

List<FavoriteItem> items = [
  FavoriteItem(
    image: "assets/sprite.png",
    title: "Sprite Can",
    subtitle: "325ml, Price",
    price: 1.50,
  ),
  FavoriteItem(
    image: "assets/coke.png",
    title: "Diet Coke",
    subtitle: "355ml, Price",
    price: 1.99,
  ),
  FavoriteItem(
    image: "assets/applejuice.png",
    title: "Apple & Grape Juice",
    subtitle: "2L, Price",
    price: 15.50,
  ),
  FavoriteItem(
    image: "assets/cococola.png",
    title: "Coca Cola Can",
    subtitle: "325ml, Price",
    price: 4.99,
  ),
  FavoriteItem(
    image: "assets/pepsi.png",
    title: "Pepsi Can",
    subtitle: "325ml, Price",
    price: 4.99,
  ),
];
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
