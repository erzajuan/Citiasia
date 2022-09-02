import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageViewController extends GetxController {
  TextEditingController txtAlamatEmailController;
  TextEditingController txtNamaLengkapController;
  TextEditingController txtNomorTelpController;

  @override
  void onInit() {
    super.onInit();
    txtAlamatEmailController = TextEditingController();
    txtNamaLengkapController = TextEditingController();
    txtNomorTelpController = TextEditingController();
  }

  @override
  void onClose() {}
}
