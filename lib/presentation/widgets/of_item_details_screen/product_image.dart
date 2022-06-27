// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ItemDetailsProductImage extends StatelessWidget {
  final String productImagePath;
  const ItemDetailsProductImage({Key? key, required this.productImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 385,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/$productImagePath"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
