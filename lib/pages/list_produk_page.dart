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
      backgroundColor: const Color(0xFF1B2838),
      appBar: AppBar(
        title: const Text("Store", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        // PULL REFRESH
        child: RefreshIndicator(
          onRefresh: () async {
            await controller.fetchProduk();
          },
          child: Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.listProduk.length,
                    itemBuilder: (context, index) {
                      final produk = controller.listProduk[index];

                      // DISMISSIBLE (SWIPE HAPUS)
                      return Dismissible(
                        key: Key(produk.title + index.toString()),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        onDismissed: (direction) {
                          controller.listProduk.removeAt(index);

                          Get.snackbar(
                            "Dihapus",
                            "${produk.title} berhasil dihapus dari list",
                            snackPosition: SnackPosition.BOTTOM,
                            colorText: Colors.white,
                            backgroundColor: const Color(0xFF171A21),
                          );
                        },
                        child: Card(
                          color: const Color(0xFF171A21),
                          margin: const EdgeInsets.only(bottom: 12),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => DetailProdukPage(), arguments: produk);
                            },
                            // CONTEXT MENU (TEKAN LAMA)
                            onLongPress: () {
                              Get.bottomSheet(
                                Container(
                                  color: const Color(0xFF171A21),
                                  child: Wrap(
                                    children: [
                                      ListTile(
                                        leading: const Icon(Icons.info, color: Colors.white),
                                        title: Text(
                                          produk.title,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.delete, color: Colors.red),
                                        title: const Text("Hapus Game",
                                            style: TextStyle(color: Colors.red)),
                                        onTap: () {
                                          controller.listProduk.removeAt(index);
                                          Get.back();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image.network(
                                  produk.thumb,
                                  width: 120,
                                  height: 60,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 120,
                                      height: 60,
                                      color: const Color(0xFF32353C),
                                      child: const Icon(Icons.broken_image,
                                          color: Colors.grey),
                                    );
                                  },
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        produk.title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        produk.formattedPriceWithNormal,
                                        style: const TextStyle(
                                            color: Color(0xFF66C0F4)),
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
      ),
    );
  }
}