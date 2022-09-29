import 'package:citiasia/app/modules/forgot_password_page/controllers/forgot_password_page_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordPageController>(
      () => ForgotPasswordPageController(),
    );
  }
}
