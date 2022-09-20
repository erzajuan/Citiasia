import 'package:citiasia/app/modules/enter_password/views/enter_password_view.dart';
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
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                color: blackColor,
                onPressed: () {
                  Get.toNamed(Routes.LOGIN_PAGE_VIEW);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: whiteColor,
          title: Text(
            'Daftar',
            style: header1,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buat Akun Anda",
                style: header2,
              ),
              Text(
                "Lengkapi data diri anda di bawah ini",
                style: normal,
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                controller: controller.nameController,
                keyboardType: TextInputType.name,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Nama Anda",
                  labelStyle: greenText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Nomor Telepon",
                  labelStyle: greenText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  labelStyle: greenText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.ENTER_PASSWORD);
                    },
                    child: Text(
                      "Daftar Sekarang",
                      style: whiteText,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Atau daftar dengan"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.g_mobiledata_outlined,
                      color: Color(0xFF1180FF),
                    ),
                    label: Text(
                      "Google",
                      style: blackText,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
