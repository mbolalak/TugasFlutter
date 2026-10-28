import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/menu_drawer_controller.dart';
import '../components/menu_drawer.dart';
import '../menu/home.dart';
import '../menu/history.dart';
import '../menu/profile.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  // Inject controller navigasi
  final MenuDrawerController drawerCtr = Get.put(MenuDrawerController());

  // List halaman yang direuse sesuai instruksi
  final List<Widget> pages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

  final List<String> titles = ['Home', 'History', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          // 1. TAMBAHKAN APPBAR (Menampilkan ikon garis 3 secara otomatis)
          appBar: AppBar(
            backgroundColor: const Color(0xFF171A21),
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(
              titles[drawerCtr.selectedIndex.value],
              style: const TextStyle(color: Colors.white),
            ),
          ),

          // 2. PASANG DRAWER DI SINI (Menu samping yang muncul pas garis 3 diklik)
          drawer: const MenuDrawer(),

          // 3. BODY BERUBAH SESUAI INDEX
          body: pages[drawerCtr.selectedIndex.value],
          
          // PASTIKAN TIDAK ADA bottomNavigationBar DI SINI!
        ));
  }
}