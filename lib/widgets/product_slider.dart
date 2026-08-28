import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<ProductSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,

            viewportFraction: 1,

            onPageChanged: (i, s) {
              setState(() {
                activeIndex = i;
              });
            },
          ),

          items: images
              .map(
                (i) => Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(i),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,

          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: images.length,

            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotColor: Colors.grey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}

List<String> images = [
  "assets/apple.png",
  "assets/apple3.jpg",
  "assets/apple2.jpg",
];
