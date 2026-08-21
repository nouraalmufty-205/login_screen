import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 160.0,
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
                      fit: BoxFit.cover,
                      image: Image.network(i).image,
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
            count: 4,

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
  'https://www.expat.com/upload/guide/1701423420-shutterstock-1367625086-news_item_slider_new_design-t1701423420.jpg',
  'https://www.cibimarket.co.uk/cdn/shop/collections/slider_promo1.png?v=1602777708&width=1296',
  'https://insideretail.asia/wp-content/uploads/2020/09/Vegestable-Thai-supermarket-1.jpg',
  'https://www.instamojo.com/blog/wp-content/uploads/2021/04/sell-groceries.jpg',
];
