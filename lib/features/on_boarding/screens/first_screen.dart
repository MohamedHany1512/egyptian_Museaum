import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/custom_skip_text.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          children: [
            const CustomSkipText(),

            SizedBox(height: height * 0.05),

            SizedBox(
              height: height * 0.35,
              child: Image.asset(
                ease,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),

            const SizedBox(height: 20),
            const CustomBoldText(text: 'Navigate with Ease', fontSize: 24,),

            const SizedBox(height: 10),
            const CustomLightText(
              text:
                  'Effortlessly explore the museum with smart indoor navigation. Find any artifact, hall, or exhibit with clear, step-by-step directions',
              color: Color(0xff666666), fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
