import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  // Indeks halaman yang aktif (0: Home, 1: History, 2: Profile)
  var selectedIndex = 0.obs;

  // Sesuai instruksi: void changePage
  void changePage(int index) {
    selectedIndex.value = index;
    Get.back(); // Otomatis nutup Drawer setelah pilih menu
  }
}