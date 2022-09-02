import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterPasswordController extends GetxController {
  TextEditingController txtPasswordController;
  TextEditingController txtRePasswordController;

  RxBool secureText = true.obs;
  void changeVisibility() => secureText.value = !secureText.value;

  RxBool resecureText = true.obs;
  void changeVisibility2() => resecureText.value = !resecureText.value;

  @override
  void onInit() {
    super.onInit();
    txtPasswordController = TextEditingController();
    txtRePasswordController = TextEditingController();
  }

  @override
  void onClose() {}
}
