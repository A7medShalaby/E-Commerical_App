import 'package:flutter/material.dart';

class MyPasswordFormField extends StatelessWidget {
  final bool? hiddenText;
  final String? Function(dynamic)? validator;
  final VoidCallback? onTap;
  final Function(String)? onChangedFunction;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MyPasswordFormField({
    this.hiddenText,
    this.validator,
    this.onTap,
    this.onChangedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: hiddenText!,
      onChanged: onChangedFunction,
      // ignore: body_might_complete_normally_nullable
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key_rounded),
        labelText: "Password",
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(
            hiddenText == false ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
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
