
import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/features/Auth/reset_password/presentation/widgets/otp_pin_theme.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    required this.controller,
    super.key,
  });
    final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 600;
    
    // Responsive values
    final fieldWidth = isMobile ? screenWidth * 0.11 : screenWidth * 0.09;
    final fieldHeight = isMobile ? 50.0 : 55.0;
    final spacing = isMobile ? 10.0 : 14.0;
    final borderRadius = isMobile ? 8.0 : 10.0;

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: AppColors.backGroundColor,
              blurRadius: 8,
              offset: const Offset(0, 0.5),
            ),
          ],
        ),
        child: PinCodeTextField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter the OTP code';
            } else if (value.length < 6) {
              return 'OTP code must be 6 digits';
            }
            return null;
          },
          controller: controller,
          appContext: context,
          beforeTextPaste: (text) => true,
          enableActiveFill: true,
          backgroundColor: AppColors.backGroundColor,
          length: 6,
          keyboardType: TextInputType.number,
          animationType: AnimationType.slide,
          onCompleted: (value) {
            debugPrint(value);
            debugPrint(controller.text);
          },
          pinTheme: otpPinTheme(borderRadius, fieldHeight, fieldWidth, spacing),
        
          enablePinAutofill: true,
        ),
      ),
    );
  }

}