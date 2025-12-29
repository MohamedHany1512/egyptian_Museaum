
import 'package:flutter/material.dart';

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({
    super.key, required this.text,
  });
 final String text ;
  @override
  Widget build(BuildContext context) {
    return Text(
     text,
      style: TextStyle(
        fontFamily: "Lato",
        color: Color(0xff2A2E39),
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}