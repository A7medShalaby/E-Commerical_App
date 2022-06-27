import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class ItemDetailsProductNameAndPrice extends StatelessWidget {
  final String? productName;
  final double? productPrice;
  const ItemDetailsProductNameAndPrice({
    Key? key,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Product Name
          Text(
            productName!,
            style: const TextStyle(
              fontSize: 28,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          //Product Price
          Text(
            "\$ ${productPrice.toString()}",
            style: const TextStyle(
              fontSize: 24,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
