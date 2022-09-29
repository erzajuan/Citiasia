import 'package:citiasia/app/modules/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/register_success_controller.dart';

class RegisterSuccessView extends GetView<RegisterSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Image.asset("assets/images/welcome.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Berhasil mendaftar!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Selamat! Akunmu sudah terdaftar. \nSilahkan masuk untuk melanjutkan.",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Masuk"),
                  style: styleButtonPrimary,
                ),
              ),
            ],
          ),
        ));
  }
}
