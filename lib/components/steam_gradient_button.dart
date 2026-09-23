import 'package:flutter/material.dart';

class SteamGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SteamGradientButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 20),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2196F3),
            Color(0xFF1565C0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}