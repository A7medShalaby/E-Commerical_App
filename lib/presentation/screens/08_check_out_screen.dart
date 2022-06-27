// ignore_for_file: sized_box_for_whitespace, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, file_names

import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import '../widgets/of_check_out_screen/check_out_buy_button.dart';
import '../widgets/of_check_out_screen/check_out_receipt.dart';
import '../widgets/of_check_out_screen/check_out_single_product.dart';

class CheckOutScreen extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String productImagePath;
  const CheckOutScreen({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  }) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Check Out",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor,
          ),
        ),
        backgroundColor: AppColors.pinkColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 548,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 14,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CheckOutSingleProduct(
                        productImagePath: widget.productImagePath,
                        productName: widget.productName,
                        productPrice: widget.productPrice,
                      ),
                      //The Receipt
                    ],
                  ),
                ),
              ],
            ),
          ),
          //The Receipt
          CheckOutReceipt(productPrice: widget.productPrice),
        ],
      ),
      //Buy Button
      bottomNavigationBar: const CheckOutBuyButton(),
    );
  }
}
