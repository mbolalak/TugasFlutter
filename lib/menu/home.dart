import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/controller/list_produk_controller.dart';
import 'package:latihanfluter/pages/detail_produk_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Inject controller produk
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2838),
      appBar: AppBar(
        title: const Text("Home Store", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Featured Games",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
             
            Container(
              height: 220, 
                child: Obx(() => ListView.builder(
                    scrollDirection: Axis.horizontal, 
                    itemCount: controller.listProduk.length,
                    itemBuilder: (context, index) {
                      final produk = controller.listProduk[index];

                    return Container(
                      width: 160, 
                      margin: const EdgeInsets.only(right: 12),
                      child: Card(
                        color: const Color(0xFF171A21),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            Get.to(() => DetailProdukPage(), arguments: produk);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                produk.imageUrl,
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: double.infinity,
                                    height: 100,
                                    color: const Color(0xFF32353C),
                                    child: const Icon(Icons.broken_image, color: Colors.grey),
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      produk.namaProduk,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
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
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}