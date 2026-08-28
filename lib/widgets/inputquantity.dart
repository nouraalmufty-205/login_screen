import 'package:flutter/material.dart';

class Inputquantity extends StatefulWidget {
  const Inputquantity({super.key});

  @override
  State<Inputquantity> createState() => _InputquantityState();
}

class _InputquantityState extends State<Inputquantity> {
  int _quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,

            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_quantity > 1) _quantity--;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.remove, color: Colors.grey, size: 28),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 56,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text(
                  '$_quantity',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _quantity++;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.add, color: Color(0xFF6FAE6E), size: 28),
                ),
              ),
            ],
          ),
          Text(
            "\$4.99",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
