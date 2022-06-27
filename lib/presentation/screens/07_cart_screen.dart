// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:e_commercial_app/constants/strings.dart';
import 'package:e_commercial_app/presentation/screens/08_check_out_screen.dart';

import 'package:flutter/material.dart';

import '../widgets/of_card_screen/single_card_product.dart';

class CartScreen extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String productImagePath;
  CartScreen({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cart",
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
      body: ListView(
        children: [
          SingleCardProduct(
            productImagePath: widget.productImagePath,
            productName: widget.productName,
            productPrice: widget.productPrice,
            productType: 'Electronics',
          ),
          SingleCardProduct(
            productImagePath: widget.productImagePath,
            productName: widget.productName,
            productPrice: widget.productPrice,
            productType: 'Fashion',
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CheckOutScreen(
                  productName: widget.productName,
                  productPrice: widget.productPrice,
                  productImagePath: widget.productImagePath,
                ),
              ),
            );
          },
          child: Text(
            "Continue",
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
              side: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
