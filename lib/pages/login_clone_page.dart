import 'package:flutter/material.dart';
import 'package:latihanfluter/components/custom_header.dart';
import 'package:latihanfluter/components/custom_input.dart';
import 'package:latihanfluter/components/steam_gradient_button.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController txtUsername = TextEditingController();
    final TextEditingController txtPassword = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF181A21),
      body: Column(
        children: [
          // Header
          const CustomHeader(title: "SIGN INN"),

          // Input Username
          CustomInput(
            label: "Steam account name",
            controller: txtUsername,
          ),

          // Input Password
          CustomInput(
            label: "Password",
            controller: txtPassword,
            obscureText: true,
          ),

          // Tombol Sign In
          SteamGradientButton(
            text: "Sign In",
            onPressed: () {
              // Action login
            },
          ),

          // Text Forgot Password
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