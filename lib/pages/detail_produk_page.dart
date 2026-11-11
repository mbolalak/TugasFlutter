import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart';
import 'package:latihanfluter/controller/detail_produk_controller.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  final controller = Get.put(DetailProdukController());

  @override
  Widget build(BuildContext context) {
    final produk = controller.produk;

    return Scaffold(
      backgroundColor: const Color(0xFF1B2838),
      appBar: AppBar(
        title: Text(produk.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF171A21),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              produk.thumb,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                color: const Color(0xFF32353C),
                child: const Center(
                  child: Icon(Icons.broken_image, color: Colors.grey, size: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produk.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Store: Steam Official Store",
                    style: TextStyle(color: Color(0xFF66C0F4), fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        "Steam Rating: ${produk.steamRatingPercent}%",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Harga Normal: ${produk.formattedNormalPrice}\nHemat Diskon: ${produk.formattedSavings}",
                    style: const TextStyle(color: Colors.white70, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Sale Price: ${produk.formattedSalePrice}",
                    style: const TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SteamGradientButton(
                    text: "Add to Cart",
                    onPressed: () {
                      Get.snackbar("Sukses", "${produk.title} masuk keranjang!");
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