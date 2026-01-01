
import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text,required this.onTap,
  });
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: CustomLightText(text: text, color: Colors.white, fontSize: 16,),
      ),
    );
  }
}
