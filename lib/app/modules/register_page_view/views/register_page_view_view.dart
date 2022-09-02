import 'package:citiasia/app/routes/app_pages.dart';
import 'package:citiasia/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_page_view_controller.dart';

class RegisterPageViewView extends GetView<RegisterPageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Daftar Akun',
            style: header1,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daftar Akun Toko Blanjaloka ",
                style: header2,
              ),
              Text(
                "Lengkapi dataa dibawah untuk mendaftar Akun Toko Blanjaloka",
                style: normal,
              ),
              SizedBox(
                height: defaultLargeMargin,
              ),
              TextField(
                controller: controller.nameController,
                keyboardType: TextInputType.name,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                    labelText: "Nama Lengkap", labelStyle: formText),
              ),
              SizedBox(
                height: defaultSmallMargin,
              ),
              TextField(
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                    labelText: "Nomor Telepon", labelStyle: formText),
              ),
              SizedBox(
                height: defaultSmallMargin,
              ),
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Alamat Email",
                  labelStyle: formText,
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.ENTER_PASSWORD);
                  },
                  child: Text("Lanjut"),
                ),
              )
            ],
          ),
        ));
  }
}
