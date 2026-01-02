 import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

PinTheme otpPinTheme(double borderRadius, double fieldHeight, double fieldWidth, double spacing) {
    return PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(borderRadius),
          fieldHeight: fieldHeight,
          fieldWidth: fieldWidth,
          // فصل الحقول عن بعضها
          activeBorderWidth: 1.5,
          selectedBorderWidth: 1.5,
          inactiveBorderWidth: 1.5,
          borderWidth: 1.5,
          // Spacing between fields
          fieldOuterPadding: EdgeInsets.symmetric(horizontal: spacing / 2),
      
          // Borders
          activeColor: Colors.grey.shade300,
          selectedColor: Colors.grey.shade400,
          inactiveColor: Colors.grey.shade300,
      
          // Filled background
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          inactiveFillColor: Colors.white,
        );
  }
