import 'package:flutter/material.dart';

class ProductOptions extends StatelessWidget {
  const ProductOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nutrition",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  Container(
                    height: 18,
                    width: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffEBEBEB),
                    ),
                    child: Center(
                      child: Text(
                        "100gr",
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                    ),
                  ),

                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        ),
        Divider(color: Color(0xffe2e2e2b2)),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Review",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Color(0xffF3603F), size: 18),
                  Icon(Icons.star, color: Color(0xffF3603F), size: 18),
                  Icon(Icons.star, color: Color(0xffF3603F), size: 18),
                  Icon(Icons.star, color: Color(0xffF3603F), size: 18),
                  Icon(Icons.star, color: Color(0xffF3603F), size: 18),

                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
