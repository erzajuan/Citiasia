import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool obscureTextConfirm = true.obs;
  RxBool obscureText = true.obs;

  void isHideConfirmPassWord() {
    obscureTextConfirm.value = !obscureTextConfirm.value;
  }

  void isHidePassWord() {
    obscureText.value = !obscureText.value;
  }
}
