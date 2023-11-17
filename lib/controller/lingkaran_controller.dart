import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController {
  double jariJari = 0;

  final hasil = "".obs;
  final color = Colors.black.obs;

  void hitungLuas() {
    double luas = 3.14 * jariJari * jariJari;
    hasil.value = "Hasil Perhitungan luas lingkaran: $luas";
    color.value = Colors.white;
  }

  void hitungKeliling() {
    double keliling = 2 * 3.14 * jariJari;
    hasil.value = "Hasil Perhitungan keliling lingkaran: $keliling";
    color.value = Colors.white;
  }
}
