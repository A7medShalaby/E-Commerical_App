import 'package:e_commercial_app/presentation/screens/02_signup_screen.dart';
import 'package:e_commercial_app/presentation/screens/03_login_screen.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //FirstScreen
      case ScreensRoute.SignUpScreen:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      //Second screen
      case ScreensRoute.LoginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
    }
    return null;
  }
}
