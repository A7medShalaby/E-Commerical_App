// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? name;
  MyButton({this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          name!,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.pinkColor),
        ),
      ),
    );
  }
}
