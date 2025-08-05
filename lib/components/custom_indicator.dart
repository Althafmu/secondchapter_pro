import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color color;

  const CustomIndicator({
    super.key,
    this.size = 32.0,
    this.strokeWidth = 3.0,
    this.color = Colors.orangeAccent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}