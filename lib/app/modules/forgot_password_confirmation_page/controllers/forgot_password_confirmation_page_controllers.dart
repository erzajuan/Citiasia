import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordConfirmationPageController extends GetxController {
  var count = 60;
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        update();
      } else {
        _timer.cancel();
        update();
      }
    });
  }

  void reset() {
    _timer.cancel();
    count = 60;
  }

  @override
  void onClose() {}
}
