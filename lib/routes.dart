import 'package:get/get.dart';

// Pages - Tugas Aktif (Steam App)
import 'package:latihanfluter/pages/login_clone_page.dart';
import 'package:latihanfluter/pages/menu_drawer_page.dart';
import 'package:latihanfluter/pages/list_produk_page.dart';
import 'package:latihanfluter/pages/detail_produk_page.dart';

// Pages - Tugas Lama (Legacy Tasks)
import 'package:latihanfluter/legacy_tasks/pages/calculator_page.dart';
import 'package:latihanfluter/legacy_tasks/pages/registration_page.dart';
import 'package:latihanfluter/legacy_tasks/pages/confirm_registration_page.dart';
import 'package:latihanfluter/legacy_tasks/pages/main_menu_page.dart';

class Routes {
  // Routes - Tugas Aktif
  static const String loginClone = "/loginClone";
  static const String menuDrawer = "/menuDrawer";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";

  // Routes - Tugas Lama (Legacy Tasks)
  static const String calculator = "/calculator";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmregistration";
  static const String mainmenu = "/mainmenupage";

  static final myPages = [
    // Rute Aktif
    GetPage(name: loginClone, page: () => LoginClonePage()),
    GetPage(name: menuDrawer, page: () => MenuDrawerPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),

    // Rute Tugas Lama (Legacy Tasks)
    GetPage(name: calculator, page: () => CalculatorPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: mainmenu, page: () => MainMenuPage()),
  ];
}
