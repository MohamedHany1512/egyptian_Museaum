
import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBoldText(text: "First Floor", fontSize: 20),
        const Spacer(),
        CustomLightText(text: "See All", fontSize: 12, color: AppColors.goldColor,),
      ],
    );
  }
}
