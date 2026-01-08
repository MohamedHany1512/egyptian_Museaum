import 'package:flutter/material.dart';

class CustomLightText extends StatelessWidget {
  const CustomLightText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });
  final String text;
  final Color color;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      textScaler: TextScaler.noScaling,
      
      text,
     
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: "Lato",
        fontWeight: FontWeight.w500,
      ),
      overflow: TextOverflow.visible,
    );
  }
}
