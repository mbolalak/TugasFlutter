import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;

  const CustomInput({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFF32353C),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}