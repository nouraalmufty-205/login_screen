import 'package:flutter/material.dart';
import 'package:login_screen/models/favouitemodel.dart';
import 'package:login_screen/screens/favourite/favoritescreen.dart';
import 'package:login_screen/widgets/greenbutton.dart';

class FavouriteProduct extends StatelessWidget {
  final FavoriteItem item;
  const FavouriteProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(item.image, height: 60, width: 50),
        const SizedBox(width: 32),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xff181725),
                ),
              ),
              Text(item.subtitle, style: TextStyle(color: Color(0xff7C7C7C))),
            ],
          ),
        ),
        Text(
          "\$${item.price.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 16),
        const Icon(Icons.arrow_forward_ios, size: 16),
      ],
    );
  }
}
