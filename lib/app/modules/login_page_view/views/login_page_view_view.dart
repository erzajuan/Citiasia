import 'package:citiasia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/theme.dart';
import '../controllers/login_page_view_controller.dart';

class LoginPageViewView extends GetView<LoginPageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Masuk",
          style: header2,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome Back", style: header2),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    "Masukkan email atau nomor telepon dan kata sandi anda untuk melanjutkan.",
                    style: grey4Text,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text(
                    "Email atau Nomor Telepon",
                    style: formText,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Masukkan email atau nomor telepon anda",
                    labelStyle: grey4Text,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  obscureText: false,
                  maxLines: 1,
                  onChanged: (value) {},
                  controller: controller.emailController,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Text(
                    "Kata Sandi",
                    style: formText,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: Obx(
                  () => TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Masukkan kata sandi akun anda",
                      labelStyle: grey4Text,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
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
                    obscureText: controller.secureText.isTrue,
                    maxLines: 1,
                    controller: controller.passwordController,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    "Lupa kata sandi?",
                    style: greenText,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          onSurface: Color.fromARGB(215, 232, 241, 1)),
                      onPressed: () {},
                      child: Text(
                        "Masuk",
                        style: whiteText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.22,
                      color: grey3,
                    ),
                    Text(
                      "Atau masuk dengan",
                      style: grey4Text,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.21,
                      color: grey3,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: grey1,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Google.png"),
                          Text("  Google", style: grey5Text),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: grey1,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Facebook.png"),
                          Text("  Facebook", style: grey5Text),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?", style: grey4Text),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.REGISTER_PAGE_VIEW);
                        },
                        child: Text(" Daftar disini", style: greenText2))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
