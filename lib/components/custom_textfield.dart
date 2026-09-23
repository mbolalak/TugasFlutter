import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // <-- Tambahkan import ini

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData icon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      // --- TAMBAHKAN KODE IKI ---
      inputFormatters: [
        // Mung ngolehi angka (0-9) lan titik (.) kanggo desimal
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
      ],
      // --------------------------
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
    );
  }
}