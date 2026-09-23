import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/pages/calculator_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
      ),
      home: CalculatorPage(),
    );
  }
}

