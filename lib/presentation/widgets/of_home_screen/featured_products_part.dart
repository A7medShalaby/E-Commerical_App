// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../screens/05_product_list_screen.dart';
import '../../screens/06_item_details_screen.dart';
import '../of_product_list_screen/single_product_item.dart';

class FeaturedProductsPart extends StatelessWidget {
  const FeaturedProductsPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Featured Bar
          Container(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //Featured Text
                    const Text(
                      "Featured",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //View More Button
                    TextButton(
                      child: const Text(
                        "View more",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: AppColors.pinkColor,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => ProductListScreen(
                              listName: "Featured",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Featured Items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ItemDetailsScreen(
                        productName: "Airpad",
                        productPrice: 999.99,
                        productImagePath: "featured_products/airpad.png",
                      ),
                    ),
                  );
                },
                child: const SingleProductItem(
                  productName: "Airpad",
                  productPrice: 999.99,
                  productImagePath: "featured_products/airpad.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ItemDetailsScreen(
                        productName: "Women Jacket",
                        productPrice: 79.99,
                        productImagePath: "featured_products/women_jacket.jpg",
                      ),
                    ),
                  );
                },
                child: const SingleProductItem(
                  productName: "ًWomen Jacket",
                  productPrice: 79.99,
                  productImagePath: "featured_products/women_jacket.jpg",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
