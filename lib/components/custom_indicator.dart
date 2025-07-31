import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final Duration duration;

  const CustomIndicator({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(); // Add timer logic if needed
  }
}
