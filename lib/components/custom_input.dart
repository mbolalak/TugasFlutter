import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? icon;

  const CustomInput({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Color(0xFF8F98A0), fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.white, fontSize: 15),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFF171A21), // Efek gelap khas Steam
              prefixIcon: icon != null ? Icon(icon, color: const Color(0xFF66C0F4), size: 20) : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Color(0xFF32353C), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Color(0xFF66C0F4), width: 1.5), // Glow biru saat aktif
              ),
            ),
          ),
        ],
      ),
    );
  }
}