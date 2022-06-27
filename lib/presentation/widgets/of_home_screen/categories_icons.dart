// ignore_for_file: sized_box_for_whitespace

import 'package:e_commercial_app/presentation/widgets/of_home_screen/category_product_icon.dart';
import 'package:flutter/material.dart';

class CategoriesIcons extends StatelessWidget {
  const CategoriesIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Categories Text
          Container(
            height: 60,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Categories Icons
          Center(
            child: Container(
              height: 70,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  BuildCategoryProductCircularIcon(
                    iconPath: "dress_icon.png",
                  ),
                  BuildCategoryProductCircularIcon(
                    iconPath: "shoe_icon.png",
                  ),
                  BuildCategoryProductCircularIcon(
                    iconPath: "watch_icon.png",
                  ),
                  BuildCategoryProductCircularIcon(
                    iconPath: "t-shirt_icon.png",
                  ),
                  BuildCategoryProductCircularIcon(
                    iconPath: "tie_icon.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
