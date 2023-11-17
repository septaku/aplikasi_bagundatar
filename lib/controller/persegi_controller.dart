import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi*4;
    hasil.value = "Hasil Perhitungan krliling dari $sisi = $hitung";
  }
}

