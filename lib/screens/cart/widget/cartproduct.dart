import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/widgets/inputquantity.dart';

class CartProduct extends StatelessWidget {
  final ProductModel product;
  final String title;
  final String image;
  final String description;
  final double price;

  CartProduct({
    super.key,
    required this.product,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Color(0xffE2E2E2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(product.image, height: 65, width: 70),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.close, size: 20, color: Color(0xffB3B3B3)),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      product.description,
                      style: TextStyle(color: Color(0xff7C7C7C)),
                    ),
                    const SizedBox(height: 15),

                    Inputquantity(price: product.price),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
