import 'package:egyptain_museaum/features/Auth/Register/presentation/screens/register_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/first_screen/first_screen.dart';
import 'package:egyptain_museaum/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/SplashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/RegisterScreen':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case '/FirstScreen':
        return MaterialPageRoute(builder: (_) => const FirstScreen());
    }
    return null;
  }
}
