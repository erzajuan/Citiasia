import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/welcome_screen_controller.dart';

class WelcomeScreenView extends GetView<WelcomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WelcomeScreenView'),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
          child: Text("Daftar"),
          onPressed: () => Get.toNamed(Routes.REGISTER),
        )));
  }
}
