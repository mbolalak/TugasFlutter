import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/custom_gender_picker.dart';
import 'package:latihanfluter/components/custom_header.dart'; // Import CustomHeader
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 1. Panggil CustomHeader di sini
              const CustomHeader(title: "CREATE ACCOUNT"),

              CustomInput(
                label: "Nama",
                controller: controller.nameController,
                icon: Icons.person_outline,
              ),
              CustomInput(
                label: "Email",
                controller: controller.emailController,
                icon: Icons.email_outlined,
              ),

              Obx(() => CustomGenderPicker(
                selectedGender: controller.selectedGender.value,
                onChanged: (value) => controller.setGender(value),
              )),

              CustomInput(
                label: "GitHub",
                controller: controller.githubController,
                icon: Icons.code_rounded,
              ),
              CustomInput(
                label: "LinkedIn",
                controller: controller.linkedinController,
                icon: Icons.link_rounded,
              ),

              SteamGradientButton(
                text: "SEND",
                onPressed: () => controller.sendData(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}