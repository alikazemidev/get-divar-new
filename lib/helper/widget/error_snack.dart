import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController errorSnack(
    {required String title, required String message}) {
  return Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      margin: EdgeInsets.all(20));
}
SnackbarController successSnack(
    {required String title, required String message}) {
  return Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      margin: EdgeInsets.all(20));
}
