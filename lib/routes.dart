import 'package:get/get.dart';
import 'package:latihanfluter/pages/confirm_registration_page.dart';
import 'package:latihanfluter/pages/registration_page.dart';

class Routes {
  //list halaman yang ada di applikasi kita
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmregistration";
//dll. file page
// tampung ke dalam array yan gakan kita pasang ke main dart
static final myPages = [
  GetPage(name: registration, page: ()=> RegistrationPage()),
  GetPage(name: confirmRegistration, page: ()=> ConfirmRegistrationPage()),
  //other page
];
}