import 'package:citiasia/app/modules/common/styles.dart';
import 'package:citiasia/app/modules/register/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class MainColumnRegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Welcome!",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: darkPrimaryColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Silahkan lengkapi data-data di bawah ini untuk mendaftarkan akun.",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.grey, fontSize: 15.0),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Email",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: darkPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Masukan alamat email anda',
            // focusedBorder: OutlineInputBorder(),
            border: outlineInputBorder,
            contentPadding: EdgeInsets.all(13),
            isDense: true,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Nomor Telepon",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: darkPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Masukan nomor Telepon anda',
            // focusedBorder: OutlineInputBorder(),
            border: outlineInputBorder,
            contentPadding: EdgeInsets.all(13),
            isDense: true,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Kata Sandi",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: darkPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Obx(
          () => TextField(
              obscureText: controller.obscureText.value,
              decoration: InputDecoration(
                hintText: 'Masukkan kata sandi akun anda',
                // focusedBorder: OutlineInputBorder(),
                border: outlineInputBorder,
                contentPadding: EdgeInsets.all(10),
                suffixIcon: IconButton(
                  icon: Icon(controller.obscureText.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    controller.isHidePassWord();
                  },
                ),
                isDense: true,
              )),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Konfirmasi kata sandi",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: darkPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Obx(
          () => TextField(
              obscureText: controller.obscureTextConfirm.value,
              decoration: InputDecoration(
                hintText: 'Konfirmasi kata sandi akun anda',
                // focusedBorder: OutlineInputBorder(),
                border: outlineInputBorder,
                contentPadding: EdgeInsets.all(10),
                suffixIcon: IconButton(
                  icon: Icon(controller.obscureTextConfirm.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    controller.isHideConfirmPassWord();
                  },
                ),
                isDense: true,
              )),
        ),
        const SizedBox(height: 13),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Daftar"),
          style: styleButtonPrimary,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Divider(
                color: darkPrimaryColor,
              ),
              Positioned(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  color: lightPrimaryColor,
                  child: Text(
                    'Atau Daftar Dengan',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: () {},
          style: styleButtonSecondary,
          icon: SvgPicture.asset("assets/images/ic_google.svg"),
          label: Text(
            'Google',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: () {},
          style: styleButtonSecondary,
          icon: SvgPicture.asset("assets/images/Facebook.svg"),
          label: Text(
            'Facebook',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sudah punya akun?"),
            Text(" "),
            Text(
              "Masuk disini",
              style: TextStyle(color: Colors.blue),
            )
          ],
        )
      ],
    );
  }
}
