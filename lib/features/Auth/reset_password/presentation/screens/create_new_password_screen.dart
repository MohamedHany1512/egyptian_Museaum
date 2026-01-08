import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_text_form_field.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
              CustomBoldText(text: 'Create New Password ', fontSize: 20),
              const SizedBox(height: 8),
              CustomLightText(
                text: 'Set a strong password to secure your account',
                color: const Color(0xff666666),
                fontSize: 12,
              ),
              const SizedBox(height: 20),

              CustomBoldText(text: 'New Password', fontSize: 12),
              const SizedBox(height: 4),
              const CustomTextFormField(
                labelText: 'Enter your password',
                isPassword: true,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              CustomBoldText(text: 'Confirm New Password', fontSize: 12),
              const SizedBox(height: 4),
              const CustomTextFormField(
                labelText: 'Enter your password',
                isPassword: true,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 80),

              CustomButton(text: " Confirm", onTap: () {
                Navigator.pushReplacementNamed(context, "/Locate");
              }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
