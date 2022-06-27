import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class CheckOutBuyButton extends StatelessWidget {
  const CheckOutBuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Buy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColors.pinkColor, // background
          onPrimary: AppColors.greyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
