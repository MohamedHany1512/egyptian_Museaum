
import 'package:egyptain_museaum/core/constants.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
    
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 1),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFDF88), // اللون الأول
              Color(0xffBA8800), // اللون الثاني
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child:  Image.asset(qrCode),
      ),
    );
  }
}
