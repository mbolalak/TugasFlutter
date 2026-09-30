import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String name;
  late String email;
  late String gender;
  late String github;
  late String linkedin;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>? ?? {};
    name = arguments['name'] ?? '';
    email = arguments['email'] ?? '';
    gender = arguments['gender'] ?? '';
    github = arguments['github'] ?? '';
    linkedin = arguments['linkedin'] ?? '';
  }
}