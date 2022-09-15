import 'package:get/get.dart';

import '../controllers/enter_password_controller.dart';

class EnterPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EnterPasswordController>(EnterPasswordController());
  }
}
