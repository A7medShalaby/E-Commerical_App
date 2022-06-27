// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:e_commercial_app/constants/strings.dart';
import 'package:flutter/material.dart';

class SingleProductItem extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String productImagePath;

  const SingleProductItem({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  }) : super(key: key);

  @override
  State<SingleProductItem> createState() => SingleProductItemState();
}

class SingleProductItemState extends State<SingleProductItem> {
  //FontStyle Widget
  TextStyle FontStyle(double fontSize, FontWeight fontWeight, Color fontColor) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: fontColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 240,
        width: 180,
        //Product Details
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Product Image
            Container(
              height: 175,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/${widget.productImagePath}"),
                ),
                //image: DecorationImage(image: image)
              ),
            ),
            //Product Price
            Text(
              "\$ ${widget.productPrice.toString()}",
              style: FontStyle(
                16,
                FontWeight.bold,
                AppColors.greyColor,
              ),
            ),
            //Product Name
            Text(
              widget.productName,
              style: FontStyle(
                18,
                FontWeight.bold,
                AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
