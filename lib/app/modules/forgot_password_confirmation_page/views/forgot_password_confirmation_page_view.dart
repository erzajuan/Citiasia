import 'package:citiasia/app/modules/forgot_password_confirmation_page/controllers/forgot_password_confirmation_page_controllers.dart';
import 'package:citiasia/app/routes/app_pages.dart';
import 'package:citiasia/app/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ForgotPasswordConfirmationPageView
    extends GetView<ForgotPasswordConfirmationPageController> {
  final ForgotPasswordConfirmationPageController _controller =
      Get.put(ForgotPasswordConfirmationPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset("assets/images/mailsent.png"),
            SizedBox(height: 30),
            Text(
              "Link telah terkirim!",
              style: header2,
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 0,
              child: Text(
                "Kami telah mengirimkan link untuk mengatur kata sandi baru ke alamat email email@gmail.com",
                textAlign: TextAlign.center,
                style: formText,
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.95,
              color: grey3,
            ),
            SizedBox(height: 25),
            Expanded(
                flex: 0,
                child: GetBuilder<ForgotPasswordConfirmationPageController>(
                    builder: (builder) {
                  return (_controller.count != 0)
                      ? Text(
                          "Belum dapat link? Kirim ulang dalam ${_controller.count} detik",
                          textAlign: TextAlign.center,
                          style: formText,
                        )
                      : Expanded(
                          flex: 0,
                          child: RichText(
                            text: TextSpan(
                              text: 'Belum dapat link? ',
                              style: formText,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Kirim Ulang ',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        _controller.reset();
                                        _controller.startTimer();
                                      },
                                    style: greenText2),
                                TextSpan(text: 'atau ', style: formText),
                                TextSpan(
                                    text: 'Ganti Email',
                                    style: greenText2,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        _controller.reset();
                                        Get.back();
                                      }),
                              ],
                            ),
                          ));
                })),
          ],
        ),
      ),
    );
  }
}
