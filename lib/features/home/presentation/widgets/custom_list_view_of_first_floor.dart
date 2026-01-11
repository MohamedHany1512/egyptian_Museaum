import 'package:egyptain_museaum/features/home/presentation/widgets/custom_list_tile_of_first_floor.dart';
import 'package:flutter/material.dart';

class CustomListViewOfFirstFloor extends StatelessWidget {
  const CustomListViewOfFirstFloor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
        
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 6),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: CustomListTileOfFirstFloor(),
        );
      },
    );
  }
}
