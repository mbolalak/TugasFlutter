import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/custom_input.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart';
import 'package:latihanfluter/controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());

    return Scaffold(
      backgroundColor: const Color(0xFF1B2838), 
      appBar: AppBar(
        title: const Text("Registration"),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            CustomInput(
              label: "Nama",
              controller: controller.nameController,
            ),
            CustomInput(
              label: "Email",
              controller: controller.emailController,
            ),
            CustomInput(
              label: "Jenis Kelamin",
              controller: controller.genderController,
            ),
            CustomInput(
              label: "GitHub",
              controller: controller.githubController,
            ),
            CustomInput(
              label: "LinkedIn",
              controller: controller.linkedinController,
            ),
            SteamGradientButton(
              text: "SEND",
              onPressed: () => controller.sendData(),
            ),
          ],
        ),
      ),
    );
  }
}