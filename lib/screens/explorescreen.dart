import 'package:flutter/material.dart';
import 'package:login_screen/screens/beveragesscreen.dart';
import 'package:login_screen/widgets/gridbox.dart';
import 'package:login_screen/widgets/homesearch.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Find Products",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        HomeSearch(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GridView.count(
              crossAxisSpacing: 15,
              mainAxisSpacing: 14,
              crossAxisCount: 2,
              children: <Widget>[
                GridBox(
                  image: Image.asset('assets/fruits.png', fit: BoxFit.contain),
                  title: 'Fresh Fruits and Vegetables',
                  color: Colors.greenAccent,
                  onTap: () {
                    // Handle tap event
                  },
                ),
                GridBox(
                  image: Image.asset('assets/oil.png', fit: BoxFit.contain),
                  title: 'Oil and Ghee',
                  color: Colors.yellow.shade100,
                  onTap: () {
                    // Handle tap event
                  },
                ),
                GridBox(
                  image: Image.asset('assets/fish.png', fit: BoxFit.contain),
                  title: 'Fish and Meat',
                  color: Colors.orange.shade100,
                  onTap: () {
                    // Handle tap event
                  },
                ),
                GridBox(
                  image: Image.asset('assets/bakery.png', fit: BoxFit.contain),
                  title: 'Bakery and Snacks',
                  color: Colors.purple.shade100,
                  onTap: () {
                    // Handle tap event
                  },
                ),
                GridBox(
                  image: Image.asset('assets/eggs.png', fit: BoxFit.contain),
                  title: 'Eggs and Dairy',
                  color: Colors.yellow.shade100,
                  onTap: () {
                    // Handle tap event
                  },
                ),
                GridBox(
                  image: Image.asset('assets/drinks.png', fit: BoxFit.contain),
                  title: 'Beverages',
                  color: Colors.cyan.shade100,

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeverageScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
