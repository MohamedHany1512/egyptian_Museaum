import 'package:flutter/material.dart';
import 'package:egyptain_museaum/core/constants.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/bottom_item.dart';

class BottomAppBarItems extends StatefulWidget {
  final Function(int) onTabSelected;

  const BottomAppBarItems({super.key, required this.onTabSelected});

  @override
  State<BottomAppBarItems> createState() => _BottomAppBarItemsState();
}

class _BottomAppBarItemsState extends State<BottomAppBarItems> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onTabSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomItem(
          icon: const Icon(Icons.home_outlined),
          label: "Home",
          index: 0,
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        BottomItem(
          icon: const Icon(Icons.map_outlined),
          label: "Map",
          index: 1,
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        const SizedBox(width: 40),
        BottomItem(
          icon: Image.asset(chatBotai),
          label: "AI",
          index: 2,
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        BottomItem(
          icon: Image.asset(journey),
          label: "Journey",
          index: 3,
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ],
    );
  }
}
