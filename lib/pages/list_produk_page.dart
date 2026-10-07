import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/controller/list_produk_controller.dart';
import 'package:latihanfluter/pages/detail_produk_page.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2838), // Background Steam
      appBar: AppBar(
        title: const Text("Store", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
            
            
            return Card(
              color: const Color(0xFF171A21),
              margin: const EdgeInsets.only(bottom: 12),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  // Pindah ke detail page sambil bawa argument
                  Get.to(() => DetailProdukPage(), arguments: produk);
                },
                child: Row(
                  children: [
                    // Gambar Produk
                    Image.network(
                      produk.imageUrl,
                      width: 120,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 120,
                          height: 60,
                          color: const Color(0xFF32353C),
                          child: const Icon(Icons.broken_image, color: Colors.grey),
                        );
                      },
                    ),
                    const SizedBox(width: 12),
                    // Info Produk
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk.namaProduk,
                            style: const TextStyle(
                              color: Colors.white, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            produk.harga,
                            style: const TextStyle(color: Color(0xFF66C0F4)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}