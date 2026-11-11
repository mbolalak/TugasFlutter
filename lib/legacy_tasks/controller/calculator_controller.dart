import 'package:get/get.dart';

class CalculatorController extends GetxController {
  // Variable reactive untuk menyimpan hasil hitung
  var hasilhitung = 0.0.obs;

  // Method Tambah
  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilhitung.value = hasiltambah;
    Get.snackbar(
      "Hasil Jumlah",
      "$hasiltambah",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  // Method Kurang
  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilhitung.value = hasilkurang;
    Get.snackbar(
      "Hasil Kurang",
      "$hasilkurang",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  // Method Kali
  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilhitung.value = hasilkali;
    Get.snackbar(
      "Hasil Kali",
      "$hasilkali",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  // Method Bagi
  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      Get.snackbar(
        "Peringatan",
        "Tidak dapat membagi dengan angka nol!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    double hasilbagi = angka1 / angka2;
    hasilhitung.value = hasilbagi;
    Get.snackbar(
      "Hasil Bagi",
      "$hasilbagi",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}