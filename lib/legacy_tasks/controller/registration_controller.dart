import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/routes.dart';

class RegistrationController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final githubController = TextEditingController();
  final linkedinController = TextEditingController();

  // Memakai RxString reaktif GetX untuk Gender
  var selectedGender = 'Laki-laki'.obs;

  void setGender(String value) {
    selectedGender.value = value;
  }

  void sendData() {
    Get.toNamed(
      Routes.confirmRegistration,
      arguments: {
        'name': nameController.text,
        'email': emailController.text,
        'gender': selectedGender.value,
        'github': githubController.text,
        'linkedin': linkedinController.text,
      },
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    githubController.dispose();
    linkedinController.dispose();
    super.onClose();
  }
}