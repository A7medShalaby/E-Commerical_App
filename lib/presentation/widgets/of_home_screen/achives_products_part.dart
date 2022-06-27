// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../screens/05_product_list_screen.dart';
import '../../screens/06_item_details_screen.dart';
import '../of_product_list_screen/single_product_item.dart';

class AchivesProductsPart extends StatelessWidget {
  const AchivesProductsPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Achives Bar
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
                    //New Achives Text
                    const Text(
                      "New Achives",
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
                              listName: "New Achives",
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
          //Achives Items
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const ItemDetailsScreen(
                            productName: "Men Pant",
                            productPrice: 80,
                            productImagePath:
                                "new_achives_products/men_pant.jpg",
                          )),
                    ),
                  );
                },
                child: const SingleProductItem(
                  productName: "Men Pant",
                  productPrice: 80,
                  productImagePath: "new_achives_products/men_pant.jpg",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const ItemDetailsScreen(
                            productName: "Men Shoes",
                            productPrice: 144.99,
                            productImagePath:
                                "new_achives_products/classic_shoes.jpg",
                          )),
                    ),
                  );
                },
                child: const SingleProductItem(
                  productName: "Men Shoes",
                  productPrice: 144.99,
                  productImagePath: "new_achives_products/classic_shoes.jpg",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
