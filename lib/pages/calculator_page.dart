import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/components/custom_button.dart';
import 'package:latihanfluter/components/custom_textfield.dart';
import 'package:latihanfluter/controller/calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());

  // Controller untuk TextFields
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

  // Helper untuk melakukan parsing nilai input
  void executeOperation(Function(double, double) operation) {
    double a1 = double.tryParse(angka1Controller.text) ?? 0.0;
    double a2 = double.tryParse(angka2Controller.text) ?? 0.0;
    operation(a1, a2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator Tel Aviv'),centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField Pertama
            CustomTextField(
              controller: angka1Controller,
              labelText: 'Angka Pertama',
              hintText: 'Masukkan angka pertama',
              icon: Icons.looks_3_outlined,
            ),
            const SizedBox(height: 16),

            // TextField Kedua
            CustomTextField(
              controller: angka2Controller,
              labelText: 'Angka Kedua',
              hintText: 'Masukkan angka kedua',
              icon: Icons.looks_4_outlined,
            ),
            const SizedBox(height: 24),

            // Grid Operasi Tombol
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: '+',
                    color: Colors.blueAccent,
                    onPressed: () => executeOperation(controller.tambah),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomButton(
                    text: '-',
                    color: Colors.orange,
                    onPressed: () => executeOperation(controller.kurang),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomButton(
                    text: '×',
                    color: Colors.green,
                    onPressed: () => executeOperation(controller.kali),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomButton(
                    text: '÷',
                    color: Colors.purple,
                    onPressed: () => executeOperation(controller.bagi),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Card Output Hasil
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Hasil Perhitungan:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Tampilan Reactive Menggunakan Obx
                    Obx(
                      () => Text(
                        controller.hasilhitung.value.toString(),
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//double parse buat nanti button
//button, textfield pakek reuseable coponent yang di folder component
//akhirnya nanti Text(controller.hasilhitung.tostring())
//kita juga butuh Obx Obx(()=> nanti widget text di sini)
//textfield harus numeric
