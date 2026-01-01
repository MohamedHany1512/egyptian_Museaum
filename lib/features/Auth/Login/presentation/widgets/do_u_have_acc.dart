import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';

class DoUHaveAcc extends StatelessWidget {
  final VoidCallback onLoginTap;

  const DoUHaveAcc({super.key, required this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          "Don't have an account yet?  ",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: onLoginTap,
          child: const Text(
            "Sign up",
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
