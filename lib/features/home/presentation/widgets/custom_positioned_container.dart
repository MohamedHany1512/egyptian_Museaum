
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class CustomPositionedContainer extends StatelessWidget {
  const CustomPositionedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFFFFFF), Color(0x70FFFFFF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomBoldText(
                  text: 'The Statue of Ramses II',
                  fontSize: 10,
                ),
               const  Spacer(),
                CustomLightText(text: "189 BC", color: Color(0xFF2A2E39), fontSize: 7)
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
        Image.asset(vector),
                CustomLightText(text: "Toward Right", color: Color(0xFF424242), fontSize: 8),
              ],
            )
          ],
        ),
      ),
    );
  }
}
