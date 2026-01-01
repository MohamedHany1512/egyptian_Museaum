import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/custom_skip_text.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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

            Image.asset(arMagic,
                  height: height * 0.25, // حجم الصورة نسبي للشاشة
             fit: BoxFit.contain),

            const SizedBox(height: 20),
            const CustomBoldText(text: 'Experience AR Magic', fontSize: 24,),

            const SizedBox(height: 20),
            const CustomLightText(
              text:
                  'View artifacts in stunning 3D, see reconstructions of how they originally looked, and bring history to life.',
              color: Color(0xff666666), fontSize: 16,
            ),
          ],
        ),
      ),
    );
    }
}