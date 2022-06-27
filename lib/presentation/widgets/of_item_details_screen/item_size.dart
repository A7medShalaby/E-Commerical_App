// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ItemSize extends StatelessWidget {
  Color productColor;
  String productSize;
  ItemSize({Key? key, required this.productColor, required this.productSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: productColor,
      ),
      child: Center(
        child: Text(
          productSize,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
