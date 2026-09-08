import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/widgets/cartproduct.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final singleProduct = items[index];

          return CartProduct(
            product: singleProduct,
            image: singleProduct.image,
            title: singleProduct.title,
            description: singleProduct.description,
            price: singleProduct.price,
          );
        },
      ),
    );
  }
}

List<ProductModel> items = [
  ProductModel(
    price: 4.99,
    description: "1kg, Price",
    image: "assets/pepper.png",
    title: "Bell ",
  ),
  ProductModel(
    price: 1.99,
    description: "4pcs, Price",
    image: "assets/eggsbasket.png",
    title: "Egg Chicken Red",
  ),
  ProductModel(
    price: 3.00,
    description: "12kg, Price",
    image: "assets/banana.png",
    title: "Banana",
  ),
  ProductModel(
    price: 2.99,
    description: "250gm, Price",
    image: "assets/ginger.png",
    title: "Ginger",
  ),
];
