import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_text_form_field.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';

class ResetYourPasswordScreen extends StatelessWidget {
  const ResetYourPasswordScreen({super.key});

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
              CustomBoldText(text: 'Reset your password', fontSize: 20),
              const SizedBox(height: 8),
              CustomLightText(
                text:
                    'Enter your email to receive a reset code. We’ll send the instructions to the address associated with your account.',
                color: const Color(0xff666666),
                fontSize: 12,
              ),
              const SizedBox(height: 20),

              // Full Name

              // Email
              CustomBoldText(text: "Email", fontSize: 14),
              const SizedBox(height: 4),
              const CustomTextFormField(
                labelText: 'Enter your Email',
                isPassword: false,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),

        
              const SizedBox(height: 16),
             
              // Terms and Conditions Checkbox
              const SizedBox(height: 80),

              // Register Button
              CustomButton(text: "Send Code", onTap: () {}),
              const SizedBox(height: 20),
            
            ],
          ),
        ),
      ),
    );
  }
}
