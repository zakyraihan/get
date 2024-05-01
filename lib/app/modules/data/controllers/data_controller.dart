import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  //TODO: Implement DataController

  final count = 0.obs;
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  RxInt hasil = 0.obs;

  void increment() => count.value++;

  void decrement() {
    if (count.value == 0) {
      count.value;
    } else {
      count.value--;
    }
  }

  void hitung(value) {
    hasil.value = int.parse(angka1.text) + int.parse(angka2.text);
  }
}
