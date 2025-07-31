import 'package:flutter/material.dart';

class CustomDashLine extends StatelessWidget {
  final double dotWidth;
  final double dotHeight;

  const CustomDashLine({super.key, required this.dotWidth, required this.dotHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dotHeight,
      width: dotWidth,
      decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
    );
  }
}
