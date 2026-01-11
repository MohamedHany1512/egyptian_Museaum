
import 'package:flutter/material.dart';

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({
    super.key, required this.text,
    required this.fontSize
  });
 final String text ;
 final double? fontSize ;
  @override
  Widget build(BuildContext context) {
    return Text(
     text,
      style: TextStyle(
        fontFamily: "Lato",
        color: Color(0xff2A2E39),
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}