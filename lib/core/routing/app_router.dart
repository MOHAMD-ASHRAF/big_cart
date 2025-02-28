import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/features/home/ui/pages/home_page.dart';
import 'package:big_cart/features/home/ui/pages/second_page.dart';
import 'package:big_cart/features/login/ui/pages/welcome_page.dart';
import 'package:big_cart/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:big_cart/features/sign_up/ui/pages/signup_page.dart';

import 'package:flutter/material.dart';

import '../../features/login/ui/pages/login_page.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());

      /// Auth routes
      case Routes.welcomePage:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.signupPage:
        return MaterialPageRoute(builder: (_) => const SignupPage());

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
