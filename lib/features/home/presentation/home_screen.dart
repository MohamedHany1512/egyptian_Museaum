import 'package:egyptain_museaum/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 14),
          child: Column(children: [SizedBox(height: 50), CustomAppBar()]),
        ),
      ),
    );
  }
}
