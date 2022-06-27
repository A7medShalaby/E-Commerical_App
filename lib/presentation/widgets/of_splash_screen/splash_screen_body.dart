import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_commercial_app/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../../screens/01_onboarding_screen.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            "E-Commercial App",
            textStyle: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w900,
              color: AppColors.pinkColor,
            ),
            colors: [
              AppColors.pinkColor,
              AppColors.purpleColor,
              AppColors.yellowColor,
              AppColors.greenColor,
              AppColors.blueColor,
              AppColors.blackColor,
              AppColors.whiteColor,
            ],
            speed: const Duration(milliseconds: 1000),
          ),
        ],
      ),
      duration: 2500,
      nextScreen: OnBoardingScreen(),
    );
  }
}
