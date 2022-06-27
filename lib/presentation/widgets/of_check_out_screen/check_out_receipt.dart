// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class CheckOutReceipt extends StatefulWidget {
  final double productPrice;
  const CheckOutReceipt({
    Key? key,
    required this.productPrice,
  }) : super(key: key);

  @override
  State<CheckOutReceipt> createState() => _CheckOutReceiptState();
}

class _CheckOutReceiptState extends State<CheckOutReceipt> {
  @override
  Widget build(BuildContext context) {
    Widget _buildCheckOutReceiptDetails(
        {required String firstText, required String lastText}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "${firstText} :",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${lastText}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Container(
      height: 130,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.yellowColor,
      ),
      child: Row(
        children: <Widget>[
          //Right Decoration
          Container(
            width: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: AppColors.purpleColor,
            ),
          ),
          //Receipt Details
          Container(
            width: 363,
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCheckOutReceiptDetails(
                  firstText: "Your Price",
                  lastText: "\$ ${widget.productPrice.toString()}",
                ),
                _buildCheckOutReceiptDetails(
                  firstText: "Discount",
                  lastText: "20%",
                ),
                _buildCheckOutReceiptDetails(
                  firstText: "Shipping",
                  lastText: "\$ 5",
                ),
                // ignore: prefer_const_constructors
                Divider(
                  color: AppColors.purpleColor,
                  thickness: 2,
                ),
                _buildCheckOutReceiptDetails(
                  firstText: "Total",
                  lastText: "\$ 69",
                ),
              ],
            ),
          ),
          //Left Decoration
          Container(
            width: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: AppColors.purpleColor,
            ),
          ),
        ],
      ),
    );
  }
}
