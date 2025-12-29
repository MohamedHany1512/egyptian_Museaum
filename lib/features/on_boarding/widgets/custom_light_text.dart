import 'package:flutter/material.dart';

class CustomLightText extends StatelessWidget {
  const CustomLightText({super.key, required this.text, required this.color});
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return     Text(
               text,
           style: TextStyle(color: color,fontSize: 16,fontFamily: "Lato"),   );
  }
}
