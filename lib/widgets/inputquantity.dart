import 'package:flutter/material.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class Inputquantity extends StatefulWidget {
  final double price;
  const Inputquantity({super.key, required this.price});

  @override
  State<Inputquantity> createState() => _InputquantityState();
}

class _InputquantityState extends State<Inputquantity> {
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.price * _quantity;
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
            "\$${totalPrice.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          GreenButton(title: "Go To Checkout"),
        ],
      ),
    );
  }
}
