import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/widgets/greenbutton.dart';
import 'package:login_screen/widgets/inputquantity.dart';
import 'package:login_screen/widgets/product_slider.dart';
import 'package:login_screen/widgets/productoptions.dart';

class ProductDetail extends StatefulWidget {
  final ProductModel product;
  const ProductDetail({super.key, required this.product});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _currentPage = 0;
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductSlider(),

                Positioned(
                  top: 50,
                  left: 20,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: IconButton(
                    icon: Icon(Icons.ios_share),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Natural Red Apple",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "1kg, Price",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.favorite_outline, size: 30),
                ],
              ),
            ),
            SizedBox(height: 25),
            Inputquantity(price: widget.product.price),

            Divider(color: Color(0xffE2E2E2B2)),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, size: 30),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xffE2E2E2B2)),
            SizedBox(height: 10),
            ProductOptions(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 30),
              child: GreenButton(title: "Add To Basket"),
            ),
          ],
        ),
      ),
    );
  }
}
