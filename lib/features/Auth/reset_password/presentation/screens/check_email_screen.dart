import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/widgets/custom_arrow_back.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/widgets/otp_input.dart';
import 'package:flutter/material.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CustomArrowBack(),
              Center(
                child: Transform.scale(scale: 1.6, child: Image.asset(logo)),
              ),
              const SizedBox(height: 30),
              CustomBoldText(text: 'Check Your Email  ', fontSize: 20),
              const SizedBox(height: 8),
              CustomLightText(
                text: 'We’ve sent you a 6-digit code.\n Enter it below.',
                color: const Color(0xff666666),
                fontSize: 12,
              ),
              const SizedBox(height: 20),

              // OTP Code Input
              OtpInput(),

              const SizedBox(height: 16),

              const SizedBox(height: 16),

              const SizedBox(height: 80),

              CustomButton(text: "Verify Code", onTap: () {}),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
