import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:citiasia/app/routes/app_pages.dart';
import '../../../utils/theme.dart';
import '../controllers/enter_password_controller.dart';

class EnterPasswordView extends GetView<EnterPasswordController> {
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
                onPressed: () { Get.toNamed(Routes.LOGIN_PAGE_VIEW); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: whiteColor,
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
              SizedBox(
                child: Obx(
                  () => TextField(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: controller.secureText.isTrue,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      labelStyle: formText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.secureText.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          controller.changeVisibility();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: defaultSmallMargin,
              ),
              SizedBox(
                child: Obx(
                  () => TextField(
                    controller: controller.repasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: controller.resecureText.isTrue,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Ulangi Kata Sandi",
                      labelStyle: formText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.resecureText.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          controller.changeVisibility2();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Lanjut"),
                ),
              )
            ],
          ),
        ));
  }
}
