import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('warning', 'udah ah cape',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('error', 'hayoh we dikurangan',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.blue);
    } else {
      bilangan.value--;
    }
  }

  void reset() {
    bilangan.value = 0;
    Get.snackbar('Reset', ' Reset berhasil ', backgroundColor: Colors.brown);
  }
}
