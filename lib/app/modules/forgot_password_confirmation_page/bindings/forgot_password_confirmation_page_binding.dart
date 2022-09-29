import 'package:citiasia/app/modules/forgot_password_confirmation_page/controllers/forgot_password_confirmation_page_controllers.dart';
import 'package:get/get.dart';

class ForgotPasswordConfirmationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordConfirmationPageController>(
      () => ForgotPasswordConfirmationPageController(),
    );
  }
}
