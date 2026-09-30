import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        backgroundColor: const Color(0xFF171A21),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
//hanya menampilkan tidak perlu obx
// Text("nama"+ controller.nama.toString(),style: TextStyle(fontsize blablabla))
        //button reusable component untuk kembali pakai Get.back