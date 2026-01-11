import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.language_sharp, size: 24),
        const SizedBox(width: 4),
        CustomBoldText(text: "AR", fontSize: 14),
        const SizedBox(width: 6),

        Expanded(
          child: CustomSearch(
            labelText: "Floor1",

            textInputAction: TextInputAction.done,
            icon: Icon(Icons.location_on_sharp),
          ),
        ),
        const SizedBox(width: 20),

        CircleAvatar(
          radius: 18,
          child: Image.asset('assets/images/ai_Guide.png'),
        ),
      ],
    );
  }
}
