import 'package:custom_checkbox_plus/custom_checkbox_plus.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/widgets/filterstate.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    Set<String> selectedCatagory = {"Eggs"};
    bool ischecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, size: 25, color: Color(0xff181725)),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Filters",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    FilterScreenState(
                      labels: [
                        'Eggs',
                        'Noodles & Pasta',
                        'Chips & Crisps',
                        'Fast Food',
                      ],
                    ),
                    SizedBox(height: 40),
                    const Text(
                      "Brand",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    FilterScreenState(
                      labels: [
                        "Individual Callection",
                        'Coca Cola',
                        'Ifad',
                        'Kazi Farmas',
                      ],
                    ),
                    const SizedBox(height: 130),
                    GreenButton(title: "Apply Filter"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
