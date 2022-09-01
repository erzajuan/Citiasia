import 'package:get/get.dart';

import '../controllers/register_page_view_controller.dart';

class RegisterPageViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageViewController>(
      () => RegisterPageViewController(),
    );
  }
}
