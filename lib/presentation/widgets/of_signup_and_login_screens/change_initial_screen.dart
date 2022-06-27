import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

// ignore: use_key_in_widget_constructors
class ChangeInitialScreen extends StatelessWidget {
  final String? name;
  final String? expressiveText;
  final VoidCallback? onTap;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ChangeInitialScreen({this.name, this.onTap, this.expressiveText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          expressiveText!,
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: onTap,
          child: Text(
            name!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blueColor,
            ),
          ),
        ),
      ],
    );
  }
}
