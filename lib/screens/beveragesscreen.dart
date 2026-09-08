import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';
import 'package:login_screen/screens/explorescreen.dart';
import 'package:login_screen/screens/filterscreen.dart';
import 'package:login_screen/widgets/products_item.dart';

class BeverageScreen extends StatelessWidget {
  const BeverageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Color(0xff181725),
                      ),
                    ),
                    Text(
                      "Beverages",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.tune,
                        size: 20,
                        color: Color(0xff181725),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                  ),

                  itemCount: items.length,
                  itemBuilder: (context, index) =>
                      Products(product: items[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<ProductModel> items = [
  ProductModel(
    title: "Diet Coke",
    description: "355ml, Price",
    image: 'assets/coke.png',
    price: 1.99,
  ),
  ProductModel(
    title: "Sprite Can",
    description: "325ml, Price",
    image: 'assets/sprite.png',
    price: 1.50,
  ),
  ProductModel(
    title: "Apple & Grape Juice",
    description: "2L, Price",
    image: 'assets/applejuice.png',
    price: 15.99,
  ),
  ProductModel(
    title: "Orange Juice",
    description: "2L, Price",
    image: 'assets/orgjuice.png',
    price: 15.99,
  ),
  ProductModel(
    title: "Coca Cola Can",
    description: "325ml, Price",
    image: 'assets/cococola.png',
    price: 4.99,
  ),
  ProductModel(
    title: "Pepsi Can",
    description: "330ml, Price",
    image: 'assets/pepsi.png',
    price: 4.99,
  ),
];
