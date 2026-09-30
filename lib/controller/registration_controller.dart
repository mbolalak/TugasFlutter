import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/routes.dart';

class RegistrationController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final githubController = TextEditingController();
  final linkedinController = TextEditingController();

  void sendData() {
    Get.toNamed(
      Routes.confirmRegistration,
      arguments: {
        'name': nameController.text,
        'email': emailController.text,
        'gender': genderController.text,
        'github': githubController.text,
        'linkedin': linkedinController.text,
      },
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    genderController.dispose();
    githubController.dispose();
    linkedinController.dispose();
    super.onClose();
  }
}