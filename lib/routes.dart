import 'package:get/get.dart';
import 'package:latihanfluter/pages/confirm_registration_page.dart';
import 'package:latihanfluter/pages/list_produk_page.dart';
import 'package:latihanfluter/pages/registration_page.dart';
import 'package:latihanfluter/pages/main_menu_page.dart'; 
import 'package:latihanfluter/pages/menu_drawer_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmregistration";
  static const String listProduk = "/listProduk";
  static const String mainmenu = "/mainmenupage";
  static const String menuDrawer = "/menuDrawer";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: mainmenu, page: () => MainMenuPage()),
    // HAPUS DUPLIKAT! Cukup satu ini aja yang dipasang:
    GetPage(name: menuDrawer, page: () => MenuDrawerPage()),
  ];
}