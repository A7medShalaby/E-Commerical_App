// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors_in_immutables, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class SingleCardProduct extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String productImagePath;
  final String productType;
  SingleCardProduct({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
    required this.productType,
  }) : super(key: key);

  @override
  State<SingleCardProduct> createState() => _SingleCardProductState();
}

class _SingleCardProductState extends State<SingleCardProduct> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Product Image
          Container(
            height: 170,
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/${widget.productImagePath}'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          //Product Details & Quantity
          Container(
            height: 150,
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //Product Name
                Text(
                  '${widget.productName}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Product Type
                Text(
                  '${widget.productType}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Product Price
                Text(
                  '\$ ${widget.productPrice.toString()}',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColors.greyColor,
                  ),
                ),
                //Quantity Buttons
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.yellowColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Remove Buttom
                      ClipOval(
                        child: Material(
                          color: Colors.redAccent, // Button color
                          child: InkWell(
                            splashColor: AppColors.blackColor, // Splash color
                            onTap: () {
                              setState(() {
                                if (itemCount > 1) {
                                  itemCount--;
                                }
                              });
                            },
                            child: const SizedBox(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Count Text
                      Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Text(
                            itemCount.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      //Add Buttom
                      ClipOval(
                        child: Material(
                          color: AppColors.greenColor, // Button color
                          child: InkWell(
                            splashColor: AppColors.pinkColor, // Splash color
                            onTap: () {
                              setState(() {
                                itemCount++;
                              });
                            },
                            child: const SizedBox(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
