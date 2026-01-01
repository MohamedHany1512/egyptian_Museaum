
import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/ResetYourPasswordScreen");
        },
        child: CustomLightText(
          text: 'Forget Password?',
          color: AppColors.goldColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
