import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool obscureTextConfirm = true.obs;
  RxBool obscureText = true.obs;
  RxBool obscureCheckbox = false.obs;

  void isCheckbox() {
    obscureCheckbox.value = !obscureCheckbox.value;
  }

  void isHideConfirmPassWord() {
    obscureTextConfirm.value = !obscureTextConfirm.value;
  }

  void isHidePassWord() {
    obscureText.value = !obscureText.value;
  }
}
