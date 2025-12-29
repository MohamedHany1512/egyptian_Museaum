
import 'package:egyptain_museaum/features/on_boarding/screens/first_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/second_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/third_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView(
      children: <Widget>[
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
      ],
    );
  }
}