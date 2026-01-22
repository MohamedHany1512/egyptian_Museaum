
import 'package:egyptain_museaum/core/constants.dart';
import 'package:flutter/material.dart';

class BottomAppBarItems extends StatelessWidget {
  const BottomAppBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.map_outlined)),
        SizedBox(width: 40), // مساحة للFAB في النص
        IconButton(onPressed: () {}, icon: Image.asset(chatBotai)),
        IconButton(onPressed: () {}, icon: Image.asset(journey)),
      ],
    );
  }
}
