import 'package:get/get.dart';

import 'package:citiasia/app/modules/home/bindings/home_binding.dart';
import 'package:citiasia/app/modules/home/views/home_view.dart';
import 'package:citiasia/app/modules/register/bindings/register_binding.dart';
import 'package:citiasia/app/modules/register/views/register_view.dart';
import 'package:citiasia/app/modules/register_success/bindings/register_success_binding.dart';
import 'package:citiasia/app/modules/register_success/views/register_success_view.dart';
import 'package:citiasia/app/modules/welcome_screen/bindings/welcome_screen_binding.dart';
import 'package:citiasia/app/modules/welcome_screen/views/welcome_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SUCCESS,
      page: () => RegisterSuccessView(),
      binding: RegisterSuccessBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_SCREEN,
      page: () => WelcomeScreenView(),
      binding: WelcomeScreenBinding(),
    ),
  ];
}
