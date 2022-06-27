// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarouselSlider extends StatelessWidget {
  const ProductCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> productsImages = [
      'assets/images/carousel_products/tech_products.jpg',
      'assets/images/carousel_products/books_products.png',
      'assets/images/carousel_products/perfumes_products.png',
      'assets/images/carousel_products/sports_products.png',
      'assets/images/carousel_products/kitchen_products.png',
      'assets/images/carousel_products/beauty_products.png',
      'assets/images/carousel_products/leather_products.png',
    ];

    return Container(
      height: 230,
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 10 / 5,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 700),
        ),
        items: productsImages
            .map(
              (productImage) => Center(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Stack(fit: StackFit.expand, children: [
                      Image.asset(
                        productImage,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ]),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
