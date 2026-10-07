import 'package:flutter/material.dart';
import 'package:latihanfluter/models/produk_model.dart';

class ProductCard extends StatelessWidget {
  final ProdukModel produk;
  final VoidCallback onTap;

  const ProductCard({super.key, required this.produk, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF171A21), // Warna gelap ala Steam
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias, // Biar ujung gambarnya melengkung ngikutin card
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            // Gambar Produk
            Image.network(
              produk.imageUrl,
              width: 200,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            // Info Produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produk.namaProduk,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    produk.harga,
                    style: const TextStyle(color: Color(0xFF66C0F4)), // Biru khas Steam
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}