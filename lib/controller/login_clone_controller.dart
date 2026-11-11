import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../routes.dart';
import 'package:latihanfluter/models/login_model.dart';

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModelDart>();

  // method hit API
  void login() async {
    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {
      try {
        isLoading.value = true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString()
        });

        isLoading.value = false;
        if (response.statusCode == 200) {
          // kita ambil jsonnya message pindah tampilan ke main menu
          // contoh json yang paling sederhana, next pertemuan json yang kompleks
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
            // pindah ke main menu (nav drawer)
            // get.off karena login nya di close
            Get.offNamed(Routes.menuDrawer);
          } else {
            Get.snackbar("gagal", data['message']);
          }
        } else {
          Get.snackbar("error", "Gagal menghubungi server");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}