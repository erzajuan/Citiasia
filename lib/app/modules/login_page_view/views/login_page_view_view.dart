import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/theme.dart';
import '../controllers/login_page_view_controller.dart';

class LoginPageViewView extends GetView<LoginPageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 257,
            ),
            Text(
              "Blanjaloka",
              style: title,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 312,
              height: 45,
              child: TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "E-Mail",
                  labelStyle: blueText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 312,
              height: 45,
              child: Obx(
                () => TextField(
                  controller: controller.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.secureText.isTrue,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: blueText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
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
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 312,
              height: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: whiteText,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("daftar"),
            ),
          ],
        ),
      )),
    );
  }
}
