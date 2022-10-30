import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/login/login_page.dart';
import 'package:flutter_advanced/presentation/onboarding/onboarding.dart';
import 'package:flutter_advanced/presentation/register/register_page.dart';
import 'package:flutter_advanced/presentation/splash/splash_page.dart';

class AppRoutes {
  static const String splash = "/";
  static const String onBoarding = "/onBoarding";
  static const String home = "/home";
  static const String login = "/login";
  static const String register = "/register";
}

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingLayouts());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return MaterialPageRoute(builder: (_) => _undfinedPage());
    }
  }

  static Scaffold _undfinedPage() {
    return Scaffold(
      appBar: AppBar(title: const Text("Undfined Page")),
      body: const Center(child: Text("Undfined Page")),
    );
  }
}
