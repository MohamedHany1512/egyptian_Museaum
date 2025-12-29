import 'package:egyptain_museaum/features/on_boarding/widgets/custom_skip_text.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
          child: Column(
            children: [
         CustomSkipText()
            ],
          ),
        ),
      ),
    );
  }
}