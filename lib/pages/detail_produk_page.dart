import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/models/produk_model.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart'; // Pake tombol gradient yang udah kamu bikin

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  // Ambil data yang dikirim dari halaman List
  final ProdukModel produk = Get.arguments; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2838),
      appBar: AppBar(
        title: Text(produk.namaProduk),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              produk.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(produk.namaProduk, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text("Developer: ${produk.namatoko}", style: const TextStyle(color: Color(0xFF66C0F4), fontSize: 14)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 20),
                      const SizedBox(width: 4),
                      Text("${produk.rating} (${produk.reviews})", style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(produk.description, style: const TextStyle(color: Colors.white70, height: 1.5)),
                  const SizedBox(height: 30),
                  Text(produk.harga, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  
                  // Pakai button buatanmu yang ada di file steam_gradient_button.dart
                  SteamGradientButton(
                    text: "Add to Cart",
                    onPressed: () {
                      Get.snackbar("Sukses", "${produk.namaProduk} masuk keranjang!");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}