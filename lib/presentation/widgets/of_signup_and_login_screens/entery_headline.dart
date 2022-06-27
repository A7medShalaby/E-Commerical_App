// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class EnteryHeadline extends StatelessWidget {
  final String? text;
  final String? brandName;
  EnteryHeadline({this.text, this.brandName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            brandName!,
            style: const TextStyle(
              color: AppColors.pinkColor,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
