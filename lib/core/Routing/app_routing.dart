import 'package:doctor_app/Features/Onboarding/UI/onboarding_screen.dart';
import 'package:doctor_app/Features/login/login_screen.dart';
import 'package:doctor_app/core/Routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.ONBOARDING:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("No Exists Screen"),
                  ),
                ));
    }
  }
}
