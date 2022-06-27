// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_const, sized_box_for_whitespace, must_be_immutable, unnecessary_brace_in_string_interps, avoid_unnecessary_containers, unnecessary_this, file_names

import 'package:e_commercial_app/constants/strings.dart';
import 'package:flutter/material.dart';

import '../widgets/of_item_details_screen/check_out_button.dart';
import '../widgets/of_item_details_screen/product_colors.dart';
import '../widgets/of_item_details_screen/product_description.dart';

import '../widgets/of_item_details_screen/product_image.dart';
import '../widgets/of_item_details_screen/product_name_and_price.dart';

import '../widgets/of_item_details_screen/product_quantity.dart';
import '../widgets/of_item_details_screen/product_sizes.dart';

class ItemDetailsScreen extends StatefulWidget {
  final String? productImagePath;
  final String? productName;
  final double? productPrice;

  const ItemDetailsScreen({
    Key? key,
    required this.productImagePath,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Item Details",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              //Product Image
              ItemDetailsProductImage(
                productImagePath: '${widget.productImagePath}',
              ),
              //Product Description
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    //Product Name & Price
                    ItemDetailsProductNameAndPrice(
                      productName: '${widget.productName}',
                      productPrice: widget.productPrice,
                    ),
                    //Product Details
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Description Section
                          const ItemDetailsProductDescription(),
                          //Available Sizes Section
                          const ItemDetailsProductSizes(),
                          //Available Color Section
                          const ItemDetailsProductColors(),
                          //Quantity Section
                          const ItemDetailsProductQuantity(),
                          //Check Out Button
                          ItemDetailsCheckOutButton(
                            productImagePath: '${widget.productImagePath}',
                            productName: '${widget.productName}',
                            productPrice: widget.productPrice,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
