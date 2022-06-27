// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../screens/07_cart_screen.dart';

class ItemDetailsCheckOutButton extends StatelessWidget {
  final String? productImagePath;
  final String? productName;
  final double? productPrice;
  const ItemDetailsCheckOutButton({
    Key? key,
    required this.productImagePath,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartScreen(
                productImagePath: productImagePath!,
                productName: productName!,
                productPrice: productPrice!,
              ),
            ),
          );
        },
        child: const Text(
          "Check Out",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.pinkColor),
          foregroundColor:
              MaterialStateProperty.all<Color>(AppColors.whiteColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: AppColors.greyColor,
                width: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
