import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final VoidCallback onLoginTap;

  const AlreadyHaveAccount({super.key, required this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          "Already have an account? ",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: onLoginTap,
          child: const Text(
            "Log in",
            style: TextStyle(
              color: AppColors.primaryColor, // أو أي لون يعجبك
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
