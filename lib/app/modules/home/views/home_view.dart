import 'package:citiasia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Daftar"),
        onPressed: () => Get.toNamed(Routes.REGISTER),
      )),
    );
  }
}
