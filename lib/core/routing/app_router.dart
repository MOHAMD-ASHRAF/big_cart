import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/features/home/ui/pages/home_page.dart';
import 'package:big_cart/features/home/ui/pages/second_page.dart';
import 'package:big_cart/features/login/ui/pages/welcome_page.dart';
import 'package:big_cart/features/onboarding/ui/pages/onboarding_page.dart';

import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final    arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.welcomePage:
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
