import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';

class TermsCheckboxRow extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
 

  const TermsCheckboxRow({
    super.key,
    required this.value,
    required this.onChanged,
   
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.primaryColor,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
              ),
              children: [
                const TextSpan(text: "I Agree to the "),
                TextSpan(
                  text: "Terms",
                  style:  TextStyle(
                    color: AppColors.goldColor, // اللون المختلف
                    decoration: TextDecoration.underline, // optional
                  ),
             
                ),
                  const TextSpan(text: " and "),
                   TextSpan(
                  text: " Conditions",
                  style:  TextStyle(
                    color: AppColors.goldColor, // اللون المختلف
                    decoration: TextDecoration.underline, // optional
                  ),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
