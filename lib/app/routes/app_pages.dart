import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_page_view/bindings/login_page_view_binding.dart';
import '../modules/login_page_view/views/login_page_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE_VIEW,
      page: () => LoginPageViewView(),
      binding: LoginPageViewBinding(),
    ),
  ];
}
