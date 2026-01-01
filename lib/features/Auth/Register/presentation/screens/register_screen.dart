import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/features/Auth/Register/presentation/widgets/already_have_account.dart';
import 'package:egyptain_museaum/features/Auth/Register/presentation/widgets/terms_check_box_row%20.dart';
import 'package:flutter/material.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:egyptain_museaum/features/Auth/Register/presentation/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.pink[250],
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(logo)),
                const SizedBox(height: 20),
                CustomBoldText(text: 'Create Your Account', fontSize: 20),
                const SizedBox(height: 8),
                CustomLightText(
                  text: 'Start your personalized journey through the museum.',
                  color: const Color(0xff666666),
                  fontSize: 12,
                ),
                const SizedBox(height: 20),

                // Full Name
                CustomBoldText(text: "Full Name", fontSize: 14),
                const SizedBox(height: 4),
                const CustomTextFormField(
                  labelText: 'Enter your Name',
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),

                // Email
                CustomBoldText(text: "Email", fontSize: 14),
                const SizedBox(height: 4),
                const CustomTextFormField(
                  labelText: 'Enter your Email',
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),

                // Password
                CustomBoldText(text: "Password", fontSize: 14),
                const SizedBox(height: 4),
                const CustomTextFormField(
                  labelText: 'Enter your Password',
                  isPassword: true,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),

                // Confirm Password
                CustomBoldText(text: "Confirm Password", fontSize: 14),
                const SizedBox(height: 4),
                const CustomTextFormField(
                  labelText: 'Confirm your Password',
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 16),
                // Terms and Conditions Checkbox
                TermsCheckboxRow(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),

                const SizedBox(height: 60),

                // Register Button
                CustomButton(text: "Register", onTap: () {}),
                const SizedBox(height: 20),
                AlreadyHaveAccount(onLoginTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
