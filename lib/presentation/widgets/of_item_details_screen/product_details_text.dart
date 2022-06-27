// ignore_for_file: unnecessary_brace_in_string_interps, must_be_immutable

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class ProductDetailsText extends StatelessWidget {
  late String detailName;
  ProductDetailsText({Key? key, required this.detailName}) : super(key: key);

  TextStyle _buildDetailsTextStyle(
      {required double fontSize, required Color fontColor}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: fontColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${detailName} :",
      style: _buildDetailsTextStyle(
        fontSize: 18,
        fontColor: AppColors.blackColor,
      ),
    );
  }
}
