// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors_in_immutables, file_names

import 'package:e_commercial_app/presentation/screens/04_home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../widgets/of_product_list_screen/single_product_item.dart';

class ProductListScreen extends StatelessWidget {
  final String listName;
  ProductListScreen({Key? key, required this.listName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.pinkColor,
          title: Text(
            listName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
          ],
        ),
        body: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_literals_to_create_immutables
          children: const [
            SingleProductItem(
              productName: "Super Bike",
              productPrice: 6999.99,
              productImagePath: "featured_products/moto_race.jpg",
            ),
            SingleProductItem(
              productName: "ًMac Book",
              productPrice: 1499.99,
              productImagePath: "featured_products/mac_book.jpg",
            ),
            SingleProductItem(
              productName: "i-Phone",
              productPrice: 344.99,
              productImagePath: "featured_products/i_phone.jpg",
            ),
            SingleProductItem(
              productName: "ًDress",
              productPrice: 89.99,
              productImagePath: "featured_products/blue_dress.jpg",
            ),
            SingleProductItem(
              productName: "Men Watch",
              productPrice: 999.99,
              productImagePath: "featured_products/watch.jpg",
            ),
            SingleProductItem(
              productName: "ًTV",
              productPrice: 499.99,
              productImagePath: "featured_products/tv.jpg",
            ),
            SingleProductItem(
              productName: "Women Jacket",
              productPrice: 79.99,
              productImagePath: "featured_products/women_jacket.jpg",
            ),
            SingleProductItem(
              productName: "ًAirpods",
              productPrice: 49.99,
              productImagePath: "featured_products/airpods.jpg",
            ),
            SingleProductItem(
              productName: "Airpad",
              productPrice: 999.99,
              productImagePath: "featured_products/airpad.png",
            ),
            SingleProductItem(
              productName: "ًInvictus Perfume",
              productPrice: 100.00,
              productImagePath: "featured_products/perfume.png",
            ),
            SingleProductItem(
              productName: "Steel Dumbbell",
              productPrice: 20.00,
              productImagePath: "featured_products/steel_dumbbell.png",
            ),
            SingleProductItem(
              productName: "ًLaptop Table",
              productPrice: 25.00,
              productImagePath: "featured_products/lap_table.jpg",
            ),
            SingleProductItem(
              productName: "Men Shoes",
              productPrice: 144.99,
              productImagePath: "new_achives_products/classic_shoes.jpg",
            ),
            SingleProductItem(
              productName: "Men Pant",
              productPrice: 80,
              productImagePath: "new_achives_products/men_pant.jpg",
            ),
          ],
        ));
  }
}
