import 'package:get/get.dart';

import '../controllers/login_page_view_controller.dart';

class LoginPageViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginPageViewController>(LoginPageViewController());
  }
}
