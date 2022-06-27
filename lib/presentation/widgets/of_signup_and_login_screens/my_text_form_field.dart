// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final bool? hiddenText;
  final TextInputType? keyboardInputType;
  final String? Function(dynamic)? validator;
  final String? labelTextName;
  final Widget? prefixIcon;
  final String? hintTextName;
  final Function(String)? onChangedFunction;
  // ignore: prefer_const_constructors_in_immutables
  MyTextFormField(
      {this.hiddenText,
      this.keyboardInputType,
      this.validator,
      this.labelTextName,
      this.prefixIcon,
      this.hintTextName,
      this.onChangedFunction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardInputType,
      validator: validator,
      onChanged: onChangedFunction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon!,
        labelText: labelTextName,
        hintText: hintTextName,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
        ),
      ),
    );
  }
}
