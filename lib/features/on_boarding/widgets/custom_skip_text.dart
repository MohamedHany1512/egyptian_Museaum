import 'package:flutter/material.dart';

class CustomSkipText extends StatelessWidget {
  const CustomSkipText({super.key});

  @override
  Widget build(BuildContext context) {
    return       Align(
                alignment: AlignmentGeometry.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, "/RegisterScreen"),
                  child: Text(
                    
                    "Skip",
                    style: TextStyle(
                  
                      color: Color(0xff999999),
                      fontWeight: FontWeight.bold,
                    
                    ),
                  
                  ),
                ),
              );
  }
}