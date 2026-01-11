import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class CustomListTileOfFirstFloor extends StatelessWidget {
  const CustomListTileOfFirstFloor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: 3 / 3,
          child: Image.asset(ramses, fit: BoxFit.cover),
        ),
      ),
      title: CustomBoldText(text: 'The Statue of Ramses II', fontSize: 16),
      subtitle: CustomLightText(
        text: '134-162 BC',
        color: Colors.grey,
        fontSize: 10,
      ),
      trailing: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: Color(0xFFE5EBED),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(Icons.arrow_forward_sharp, size: 16, color: Colors.black),
      ),
    );
  }
}
