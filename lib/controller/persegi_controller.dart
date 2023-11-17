import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController {
  double sisi = 0;

  final hasil = "".obs;
  final color = Colors.black.obs;

  void hitungLuas() {
    double luas = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas persegi: $luas";
    color.value = Colors.white;
  }

  void hitungKeliling() {
    double keliling = 4 * sisi;
    hasil.value = "Hasil Perhitungan keliling persegi: $keliling";
    color.value = Colors.white;
  }
}
