import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/screens/home/shopscreen.dart';
import 'package:login_screen/widgets/products_item.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final List<ProductModel> items;
  const ProductCard({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
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
          height: 270,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Products(product: items[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
