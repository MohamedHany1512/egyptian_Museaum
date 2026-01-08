import 'package:egyptain_museaum/features/Auth/Login/presentation/screen/login_screen.dart';
import 'package:egyptain_museaum/features/Auth/Register/presentation/screens/register_screen.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/screens/check_email_screen.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/screens/create_new_password_screen.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/screens/locate.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/screens/reset_your_password_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/first_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/on_boarding_screen.dart';
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
      case '/OnBoardingScreen':
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case '/LoginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
       case '/ResetYourPasswordScreen':
        return MaterialPageRoute(builder: (_) => const ResetYourPasswordScreen());
     case '/CheckEmailScreen':
        return MaterialPageRoute(builder: (_) => const CheckEmailScreen());
   case '/CreateNewPasswordScreen':
        return MaterialPageRoute(builder: (_) => const CreateNewPasswordScreen());
   case '/Locate':
        return MaterialPageRoute(builder: (_) => const Locate());

    }
    return null;
  }
}
