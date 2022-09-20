import 'package:get/get.dart';

import '../modules/enter_password/bindings/enter_password_binding.dart';
import '../modules/enter_password/views/enter_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_page_view/bindings/login_page_view_binding.dart';
import '../modules/login_page_view/views/login_page_view_view.dart';
import '../modules/register_page_view/bindings/register_page_view_binding.dart';
import '../modules/register_page_view/views/register_page_view_view.dart';
import '../modules/splash_screen_page/bindings/splash_screen_page_binding.dart';
import '../modules/splash_screen_page/views/splash_screen_page_view.dart';
import '../modules/welcome_page/bindings/welcome_page_binding.dart';
import '../modules/welcome_page/views/welcome_page_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN_PAGE;

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
    GetPage(
      name: _Paths.REGISTER_PAGE_VIEW,
      page: () => RegisterPageViewView(),
      binding: RegisterPageViewBinding(),
    ),
    GetPage(
      name: _Paths.ENTER_PASSWORD,
      page: () => EnterPasswordView(),
      binding: EnterPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_PAGE,
      page: () => const SplashScreenPageView(),
      binding: SplashScreenPageBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_PAGE,
      page: () => const WelcomePageView(),
      binding: WelcomePageBinding(),
    ),
  ];
}
