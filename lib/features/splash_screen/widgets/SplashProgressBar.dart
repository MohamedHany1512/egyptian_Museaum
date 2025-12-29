import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';

class SplashProgressBar extends StatelessWidget {
  final double value;
  const SplashProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: LinearProgressIndicator(
          value: value,
          minHeight: 6,
          backgroundColor: AppColors.primaryColor,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
          semanticsLabel: "Loading",
          semanticsValue: value.toStringAsFixed(2),
        ),
      ),
    );
  }
}