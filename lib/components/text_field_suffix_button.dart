import 'package:flutter/material.dart';

class TextFieldSuffixButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const TextFieldSuffixButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // We add padding here so the suffixIcon in TextFormField doesn't cramp the button
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: onPressed != null ? Colors.black87 : Colors.grey,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}