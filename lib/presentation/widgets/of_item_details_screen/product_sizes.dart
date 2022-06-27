import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import 'item_size.dart';
import 'product_details_text.dart';

class ItemDetailsProductSizes extends StatelessWidget {
  const ItemDetailsProductSizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Available Sizes Text
          ProductDetailsText(detailName: "Available Sizes"),
          //Sizes
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemSize(
                  productColor: AppColors.greenColor,
                  productSize: 'S',
                ),
                ItemSize(
                  productColor: AppColors.greenColor,
                  productSize: 'M',
                ),
                ItemSize(
                  productColor: AppColors.greenColor,
                  productSize: 'L',
                ),
                ItemSize(
                  productColor: AppColors.greenColor,
                  productSize: 'XL',
                ),
                ItemSize(
                  productColor: AppColors.greenColor,
                  productSize: 'XXL',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
