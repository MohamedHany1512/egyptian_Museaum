import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/custom_skip_text.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          children: [
            const CustomSkipText(),

            SizedBox(height: height * 0.08),

            Image.asset(aiGuide,
                  height: height * 0.25, // حجم الصورة نسبي للشاشة
             fit: BoxFit.contain),

            const SizedBox(height: 20),
            const CustomBoldText(text: 'Meet Your AI Guide'),

            const SizedBox(height: 20),
            const CustomLightText(
              text:
                  'Ask questions, discover stories, and unlock the secrets of ancient Egypt with Maat, your personal AI assistant.',
              color: Color(0xff666666),
            ),
          ],
        ),
      ),
    );
  }
}
