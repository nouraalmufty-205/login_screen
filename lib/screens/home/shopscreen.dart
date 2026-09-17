import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/screens/home/widgets/groceriestile.dart';
import 'package:login_screen/screens/home/widgets/home_slider.dart';
import 'package:login_screen/screens/home/widgets/homesearch.dart';
import 'package:login_screen/screens/home/widgets/productcard.dart';
import 'package:login_screen/widgets/products_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
        child: Column(
          children: [
            Center(child: Image.asset("assets/carrot.png")),
            SizedBox(height: 15),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const HomeSearch(),
            const SizedBox(height: 10),

            const HomeSlider(),
            const SizedBox(height: 30),
            ProductCard(title: "Exclusive Offer", items: items),
            const SizedBox(height: 30),
            ProductCard(title: "Best Selling", items: sellings),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Groceries",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff53B175),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 15),

                itemBuilder: (context, index) {
                  return Groceries(
                    image: categories[index]["image"],
                    title: categories[index]["title"],
                    color: categories[index]["color"],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 270,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Products(product: groceries[index]);
                },
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> items = [
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/ginger.png",
    title: "Ginger",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/apple.png",
    title: "Apple",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/beef.png",
    title: "Beef Bone",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/chicken.png",
    title: "Broiler Chicken",
  ),
];
List<ProductModel> sellings = [
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/eggsbasket.png",
    title: "Eggs",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/banana.png",
    title: "Banana",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/beef.png",
    title: "Beef Bone",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/chicken.png",
    title: "Broiler Chicken",
  ),
];
final List<Map<String, dynamic>> categories = [
  {
    "image": "assets/pulses.png",
    "title": "Pulses",
    "color": Colors.orange.shade100,
  },
  {"image": "assets/rice.png", "title": "Rice", "color": Colors.green.shade100},
];
List<ProductModel> groceries = [
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/chicken.png",
    title: "Broiler Chicken",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/beef.png",
    title: "Beef Bone",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/beef.png",
    title: "Beef Bone",
  ),
  ProductModel(
    price: 4.99,
    description: "1kg, Priceg",
    image: "assets/chicken.png",
    title: "Broiler Chicken",
  ),
];
