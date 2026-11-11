import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/custom_header.dart';
import 'package:latihanfluter/components/custom_input.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart';
import 'package:latihanfluter/controller/login_clone_controller.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A21),
      body: Column(
        children: [
          
          const CustomHeader(title: "SIGN INN"),

          CustomInput(
            label: "Steam account name",
            controller: controller.txtUsername,
          ),

          
          CustomInput(
            label: "Password",
            controller: controller.txtPassword,
            obscureText: true,
          ),

        
          Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SteamGradientButton(
                    text: "Sign In",
                    onPressed: () {
                      controller.login();
                    },
                  ),
          ),

          
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Forgot your password?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}