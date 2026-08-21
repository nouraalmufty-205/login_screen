import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/widgets/home_slider.dart';
import 'package:login_screen/widgets/homesearch.dart';
import 'package:login_screen/widgets/products.dart';
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
            HomeSearch(),
            SizedBox(height: 10),

            HomeSlider(),
            SizedBox(height: 10),

            SizedBox(
              height: 260,
              child: ListView.separated(
                itemBuilder: (context, index) => Products(),
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
