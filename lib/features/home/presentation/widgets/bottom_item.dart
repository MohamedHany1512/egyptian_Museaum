
import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';


class BottomItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final int index;
  final int selectedIndex;
  final Function(int) onTap;

  const BottomItem({super.key, 
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selectedIndex == index ? AppColors.goldColor : Colors.grey;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon is Icon
              ? Icon((icon as Icon).icon, color: color)
              : ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                  child: icon,
                ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
