import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/steam_model.dart';

class ListProdukController extends GetxController {
  var isLoading = false.obs;

  // List yang menampung Model Data (bukan JSON Array mentah)
  var listProduk = <SteamModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduk(); // Otomatis hit API saat halaman dibuka
  }

  // method hit API GET (pakai Future<void> agar bisa di-await oleh RefreshIndicator)
  Future<void> fetchProduk() async {
    try {
      isLoading.value = true; // sebagai tanda di page muncul loading widget
      final url = Uri.parse(
          "https://www.cheapshark.com/api/1.0/deals?storeID=1&upperPrice=15");

      final response = await http.get(url);

      if (response.statusCode == 200) {
        // convert json array ke List<SteamModel> dan masukkan ke RxList via assignAll
        listProduk.assignAll(steamModelFromJson(response.body));
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      Get.snackbar("gagal", e.toString());
      debugPrint("error nya: $e");
    } finally {
      isLoading.value = false;
    }
  }
}