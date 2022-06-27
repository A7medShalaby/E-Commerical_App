// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class QuantityButton extends StatefulWidget {
  Color? splashColor;
  Function? function;
  IconData? icon;
  QuantityButton({
    Key? key,
    required this.splashColor,
    required this.function,
    required this.icon,
  }) : super(key: key);

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: AppColors.pinkColor, // Button color
        child: InkWell(
          splashColor: widget.splashColor, // Splash color
          onTap: () {
            setState(() {
              widget.function;
            });
          },
          child: SizedBox(
            width: 60,
            height: 60,
            child: Icon(
              widget.icon,
              color: AppColors.whiteColor,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}


/*QuantityButton(
    icon: Icons.remove,
    splashColor: AppColors.blackColor,
    function: decreaseItemCount,
  ),


  QuantityButton(
    function: setState(() {
      itemCount++;
    }),
    icon: Icons.add,
    splashColor: AppColors.greenColor,
  ),*/