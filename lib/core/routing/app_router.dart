import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/features/home/ui/pages/home_page.dart';
import 'package:big_cart/features/home/ui/pages/second_page.dart';

import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final    arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.secondHome:
        return MaterialPageRoute(builder: (_) => const SecondPage());

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
