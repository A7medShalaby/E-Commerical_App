// ignore_for_file: sized_box_for_whitespace, import_of_legacy_library_into_null_safe, prefer_const_constructors_in_immutables, unnecessary_const, prefer_const_constructors, file_names, avoid_print, unused_element

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commercial_app/presentation/widgets/of_home_screen/app_bar.dart';
import 'package:e_commercial_app/presentation/widgets/of_home_screen/categories_icons.dart';

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/of_home_screen/achives_products_part.dart';
import '../widgets/of_home_screen/featured_products_part.dart';
import '../widgets/of_home_screen/home_drawer.dart';
import '../widgets/of_home_screen/products_carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Product? electronicData;
Product? fashionData;
Product? accessoriesData;
Product? sportsData;
Product? machinesData;

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> productsStream =
        FirebaseFirestore.instance.collection('products').snapshots();
    return Scaffold(
      key: _key,
      drawer: HomeDrawer(),
      appBar: HomeAppBar(
        appBar: AppBar(),
        onTap: () {
          _key.currentState?.openDrawer();
        },
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: productsStream,
        builder: (context, AsyncSnapshot? snapshot) {
          FirebaseFirestore.instance
              .collection('products')
              .doc("vR2NuPhGhiVxJkl33xWy")
              .get()
              .then(
            (DocumentSnapshot documentSnapshot) {
              if (documentSnapshot.exists) {
                print('Document data: ${documentSnapshot.data()}');
                //Set the relevant data to variables as needed
              } else {
                print('Document does not exist on the database');
              }
              /*if (snapshot.hasError) {
                return Text('Something went wrong : ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(color: AppColors.pinkColor),
                );
              }*/
            },
          );
          return Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              /*children: snapshot?.data.docs
                    .map<Widget>((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return ListTile(
                    title: Text(data['vR2NuPhGhiVxJkl33xWy']['featureProduct']
                            ['name'] ??
                        "Ahmed"),
                    subtitle: Text(data['vR2NuPhGhiVxJkl33xWy']
                            ['featureProduct']['price'] ??
                        "14"),
                  );
                }).toList(),*/
              children: [
                //Items Carousel Slider
                ProductCarouselSlider(),
                //Else Page
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      //Category Section
                      CategoriesIcons(),
                      //Featured Section
                      FeaturedProductsPart(),
                      //Achives Section
                      AchivesProductsPart(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
