// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import 'product_details_text.dart';

class ItemDetailsProductQuantity extends StatefulWidget {
  const ItemDetailsProductQuantity({Key? key}) : super(key: key);

  @override
  State<ItemDetailsProductQuantity> createState() =>
      _ItemDetailsProductQuantityState();
}

class _ItemDetailsProductQuantityState
    extends State<ItemDetailsProductQuantity> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Quantity Text
          ProductDetailsText(detailName: "Quantity"),
          //Quantity Bottoms
          Center(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //I Can Make 1 Widget Contain Both Of ClipOval ... But I Don't Need That
                  //Remove Buttom
                  ClipOval(
                    child: Material(
                      color: AppColors.pinkColor, // Button color
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
                          width: 60,
                          height: 60,
                          child: Icon(
                            Icons.remove,
                            color: AppColors.whiteColor,
                            size: 30,
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
                          fontSize: 24,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //Add Buttom
                  ClipOval(
                    child: Material(
                      color: AppColors.pinkColor, // Button color
                      child: InkWell(
                        splashColor: AppColors.greenColor, // Splash color
                        onTap: () {
                          setState(() {
                            itemCount++;
                          });
                        },
                        child: const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
