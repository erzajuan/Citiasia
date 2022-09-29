import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPageController extends GetxController {
  TextEditingController inputController = TextEditingController();

  @override
  void onClose() {
    inputController.dispose();
    super.onClose();
  }
}
