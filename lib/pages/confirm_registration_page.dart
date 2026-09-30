import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/custom_header.dart';
import 'package:latihanfluter/components/custom_text_display.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart';
import 'package:latihanfluter/controller/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color(0xFF1B2838),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomHeader(title: "CONFIRM DETAILS"),

              CustomTextDisplay(label: "Nama", value: controller.name),
              CustomTextDisplay(label: "Email", value: controller.email),
              CustomTextDisplay(label: "Jenis Kelamin", value: controller.gender),
              CustomTextDisplay(label: "GitHub", value: controller.github),
              CustomTextDisplay(label: "LinkedIn", value: controller.linkedin),

              const SizedBox(height: 20),
              SteamGradientButton(
                text: "KEMBALI",
                onPressed: () => Get.back(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}