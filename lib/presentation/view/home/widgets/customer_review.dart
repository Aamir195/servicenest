import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  final int currentPage;
  final int itemCount;
  final Color activeColor;
  final Color inactiveColor;
  final double dotSize;
  final double spacing;

  CustomPageIndicator({
    required this.currentPage,
    required this.itemCount,
    this.activeColor = Colors.orange,
    this.inactiveColor = Colors.grey,
    this.dotSize = 10.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: dotSize,
          height: dotSize,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPage ? activeColor : inactiveColor,
          ),
        );
      }),
    );
  }
}
