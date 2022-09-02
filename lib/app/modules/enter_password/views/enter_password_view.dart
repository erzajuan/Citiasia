import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/rezza_theme.dart';
import '../../../utils/theme.dart';
import '../controllers/enter_password_controller.dart';

class EnterPasswordView extends GetView<EnterPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RezzaTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          "Daftar Akun",
          style: RezzaTheme.of(context).title2.override(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: RezzaTheme.of(context).platinum,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: AutoSizeText(
                        "Daftar Akun Toko Blanjaloka",
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        style: RezzaTheme.of(context).title3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 2, 16, 0),
                      child: AutoSizeText(
                        "Lengkapi data dibawah untuk mendaftar Akun Toko Blanjaloka",
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        style: RezzaTheme.of(context).bodyText2.override(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: TextFormField(
                      controller: controller.txtPasswordController,
                      autofocus: true,
                      obscureText: controller.secureText.isTrue,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintStyle: RezzaTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
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
                      style: RezzaTheme.of(context).bodyText1,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: TextFormField(
                      controller: controller.txtRePasswordController,
                      autofocus: true,
                      obscureText: controller.resecureText.isTrue,
                      decoration: InputDecoration(
                        labelText: "Ulangi Password",
                        hintStyle: RezzaTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
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
                      style: RezzaTheme.of(context).bodyText1,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 32, 16, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN_PAGE_VIEW);
                        },
                        child: Text("Lanjut"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
