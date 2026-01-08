import 'package:egyptain_museaum/core/colors.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/core/functions/request_location_access.dart';
import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/core/widgets/custom_light_text.dart';
import 'package:flutter/material.dart';

class Locate extends StatelessWidget {
  const Locate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(currentLocation),
              const SizedBox(height: 30),
              CustomBoldText(text: 'Locate your location', fontSize: 20),
              const SizedBox(height: 8),
              CustomLightText(
                text:
                    'Use the map to locate your position; you \n can search or drag the cursor to \n the correct location and then confirm the \n location.',
                color: const Color(0xff666666),
                fontSize: 16,
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 4),

              CustomButton(
                text: " Locate your position on the map",
                onTap: () async {
                  await requestLocationPermission();
                  Navigator.pushReplacementNamed(context, '/HomeScreen');
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
