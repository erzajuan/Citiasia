import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageViewController extends GetxController {
  //TODO: Implement LoginPageViewController

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool secureText = true.obs;
  void changeVisibility() => secureText.value = !secureText.value;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
