import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutomaticCarousel extends StatefulWidget {
  const AutomaticCarousel({super.key});

  @override
  State<AutomaticCarousel> createState() => _AutomaticCarouselState();
}

class _AutomaticCarouselState extends State<AutomaticCarousel> {
  final List<String> images = [
    "image/photo_2023-05-06_13-12-57.jpg",
    "image/photo_2023-05-06_13-13-30.jpg",
    "image/photo_2023-05-06_13-13-32.jpg",
    "image/photo_2023-05-06_13-13-34.jpg",
    "image/photo_2023-05-06_13-13-35.jpg",
    "image/photo_2023-05-06_13-13-36.jpg",
    "image/photo_2023-05-06_13-13-38.jpg",
    "image/photo_2023-05-06_13-13-39.jpg",
    "image/photo_2023-05-06_13-13-40.jpg",
    "image/photo_2023-05-06_13-13-42.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 200.0,
      width: width,
      // child: Carousel(
      //   dotSpacing: 15.0,
      //   dotSize: 6.0,
      //   images: images.map((item) => Image.asset(item,
      //   fit: BoxFit.cover,
      //   )).toList(),

      // ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CarouselSlider(
          items: images
              .map((item) => Image.asset(
                    item,
                    //fit: BoxFit.cover,
                  ))
              .toList(),
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 1,
            enlargeCenterPage: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
      ),
    );
  }
}
