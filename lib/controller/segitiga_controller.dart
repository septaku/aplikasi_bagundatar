import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  double alas = 0;
  double tinggi = 0;
  double sisi1 = 0;
  double sisi2 = 0;
  double sisi3 = 0;

  final hasil = "".obs;
  final color = Colors.black.obs;

  void hitungLuas() {
    double luas = 0.5 * alas * tinggi;
    hasil.value = "Hasil Perhitungan luas segitiga: $luas";
    color.value = Colors.white;
  }

  void hitungKeliling() {
    double keliling = sisi1 + sisi2 + sisi3;
    hasil.value = "Hasil Perhitungan keliling segitiga: $keliling";
    color.value = Colors.white;
  }
}
