import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
