import 'package:citiasia/app/modules/forgot_password_confirmation_page/controllers/forgot_password_confirmation_page_controllers.dart';
import 'package:citiasia/app/modules/forgot_password_page/controllers/forgot_password_page_controller.dart';
import 'package:citiasia/app/routes/app_pages.dart';
import 'package:citiasia/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ForgotPasswordPageView extends GetView<ForgotPasswordPageController> {
  final ForgotPasswordConfirmationPageController _controller =
      Get.put(ForgotPasswordConfirmationPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Lupa Kata Sandi",
          style: header2,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: Color.fromARGB(209, 228, 240, 246),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Image.asset("assets/images/info.png")),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Masukkan email atau nomor telepon yang terdaftar untuk mengatur kata sandi baru.",
                          style: formText,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 48,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Email atau nomor telepon anda",
                    labelStyle: grey4Text,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  obscureText: false,
                  maxLines: 1,
                  onChanged: (value) {},
                  controller: controller.inputController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height * 0.5)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: primaryColor),
                      onPressed: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD_CONFIRMATION_PAGE);
                        if (_controller.count < 60) _controller.reset();
                        _controller.startTimer();
                      },
                      child: Text(
                        "Kirim",
                        style: whiteText,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
