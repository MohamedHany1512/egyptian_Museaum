
import 'package:egyptain_museaum/core/colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.totalPages,
    required int currentPage,
  }) : _currentPage = currentPage;

  final int totalPages;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: _currentPage == index ? 28 : 5,
          height: _currentPage == index ? 5 : 5,
          decoration: BoxDecoration(
            shape:_currentPage == index ? BoxShape.rectangle : BoxShape.circle,
            color: _currentPage == index
                ? AppColors.primaryColor
                : Colors.grey,
          ),
        );
      }),
    );
  }
}