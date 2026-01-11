import 'package:egyptain_museaum/core/constants.dart';

import 'package:egyptain_museaum/features/home/presentation/widgets/custom_positioned_container.dart';
import 'package:flutter/material.dart';

class NearByDepartment extends StatelessWidget {
  const NearByDepartment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20, right: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 1.9 / 2,
                child: Image.asset(ramses, fit: BoxFit.cover),
              ),
            ),
            CustomPositionedContainer(),
          ],
        ),
      ),
    );
  }
}
