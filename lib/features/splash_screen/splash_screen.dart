import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/features/splash_screen/widgets/splash_progress_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  void startAnimation() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() => setState(() {}))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed && mounted) {
              Navigator.pushReplacementNamed(context, '/OnBoardingScreen');
            }
          })
          ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 220),
            Image.asset(pyramids),
            const SizedBox(height: 50),
            SplashProgressBar(value: _controller.value),
          ],
        ),
      ),
    );
  }
}
