import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/theme.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 125,
              ),
              Image.asset(
                'assets/images/welcome.png',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 67,
              ),
              SizedBox(
                width: 312,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      primaryColor
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    )
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN_PAGE_VIEW);
                  },
                  child: Text(
                    "Masuk",
                    style: whiteText,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Atau",
                style: normal,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 312,
                height: 45,
                child: OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.REGISTER_PAGE_VIEW);
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
