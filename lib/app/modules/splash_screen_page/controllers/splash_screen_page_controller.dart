import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashScreenPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    redirect();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.WELCOME_PAGE);
  }
}
