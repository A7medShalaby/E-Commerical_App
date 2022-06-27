// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  Color productColor;
  ItemColor({Key? key, required this.productColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: CircleAvatar(
        backgroundColor: productColor,
        radius: 20.0,
      ),
    );
  }
}
