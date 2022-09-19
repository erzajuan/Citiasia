import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/theme.dart';
import '../controllers/welcome_page_controller.dart';

class WelcomePageView extends GetView<WelcomePageController> {
  const WelcomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 75,
              width: 187,
            ),
            SizedBox(
              height: 125,
            ),
            Image.asset(
              'assets/images/ilustrasi1.png',
              height: 225,
              width: 298,
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 312,
              height: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: primaryColor),
                    // backgroundColor: primaryColor,
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
            ),
          ],
        ),
      ),
    );
  }
}
