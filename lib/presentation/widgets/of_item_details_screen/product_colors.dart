import 'package:flutter/material.dart';

import 'item_color.dart';
import 'product_details_text.dart';

class ItemDetailsProductColors extends StatelessWidget {
  const ItemDetailsProductColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Available Colors Text
          ProductDetailsText(detailName: "Available Colors"),
          //Colors Circles
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemColor(productColor: Colors.black),
                ItemColor(productColor: Colors.white),
                ItemColor(productColor: Colors.blue),
                ItemColor(productColor: Colors.brown),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
