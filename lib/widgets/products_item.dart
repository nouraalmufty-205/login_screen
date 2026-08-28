import 'package:flutter/material.dart';
import 'package:login_screen/models/productmodel.dart';

class Products extends StatelessWidget {
  ProductModel product;
  Products({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      // height: 248.51,// it contains a child so it controllet by it self
      padding: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: Image.asset(product.image))),
          SizedBox(height: 33),
          Text(
            product.title,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff181725),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(product.description, style: TextStyle(color: Color(0xff7C7C7C))),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${product.price}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
