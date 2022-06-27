// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:e_commercial_app/constants/strings.dart';
import 'package:e_commercial_app/presentation/screens/02_signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/of_onboarding_screen/build_page.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 70),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(
              () {
                isLastPage = index == 2;
              },
            );
          },
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //First Page
            const BuildPage(
              pageTitle: 'Choose your product',
              urlImage: 'assets/images/onboarding/00_first_page.png',
              pageSubtitle:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              pageColor: AppColors.whiteColor,
            ),
            //Second Page
            const BuildPage(
              pageTitle: 'Add to cart',
              urlImage: 'assets/images/onboarding/01_second_page.png',
              pageSubtitle:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              pageColor: AppColors.whiteColor,
            ),
            //Third Page
            const BuildPage(
              pageTitle: 'Enjoy',
              urlImage: 'assets/images/onboarding/02_third_page.png',
              pageSubtitle:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              pageColor: AppColors.whiteColor,
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Container(
              padding: const EdgeInsets.all(15),
              color: AppColors.whiteColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: AppColors.whiteColor,
                  backgroundColor: AppColors.pinkColor,
                  minimumSize: const Size.fromHeight(60),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  final preferences = await SharedPreferences.getInstance();
                  preferences.setBool('showHome', true);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
              ),
            )
          : Container(
              height: 70,
              color: AppColors.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Skip Button
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  //Dots
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 25,
                        dotColor: AppColors.blackColor,
                        activeDotColor: AppColors.pinkColor,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  //Next Button
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
