import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? topTitle;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final bool readOnly;
  final Widget? suffix; 
  final String? errorText;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    this.controller,
    this.topTitle,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.suffix, // <<< ADD IT TO THE CONSTRUCTOR
    this.errorText,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topTitle != null) ...[
          Text(
            topTitle!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          obscureText: isPassword,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            // Use suffixIcon for widgets like buttons. It handles alignment better.
            suffixIcon: suffix, // <<< USE THE PARAMETER HERE
            errorText: errorText,
            errorStyle: const TextStyle(color: Colors.redAccent),
            filled: true,
            fillColor: readOnly ? Colors.grey.shade200 : Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
            ),
            // Ensure the error border also respects the radius
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.redAccent, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.redAccent, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}