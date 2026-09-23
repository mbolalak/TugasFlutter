import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;

  const CustomHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60, bottom: 20),
      child: Column(
        children: [
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/steam.png', // 2. Samakan nama file dengan gambar di foldermu (steam.png)
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 8),
              const Text(
                "STEAM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ],
          ), // 3. Tambahkan koma di sini
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w300,
              letterSpacing: 3,
            ),
          ),
        ],
      ),
    );
  }
}