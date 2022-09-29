import 'package:citiasia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // final int _currentIndex = 0;
  // List<Widget> body = [
  //   SvgPicture.asset("assets/images/home.svg"),
  //   SvgPicture.asset("assets/images/home_storage.svg"),
  //   SvgPicture.asset("assets/images/chat.svg"),
  //   SvgPicture.asset("assets/images/person.svg"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          // currentIndex: _currentIndex,
          // onTap: (int index) {},
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Beranda",
              icon: SvgPicture.asset("assets/images/home.svg"),
            ),
            BottomNavigationBarItem(
              label: "Kegiatan",
              icon: SvgPicture.asset("assets/images/home_storage.svg"),
            ),
            BottomNavigationBarItem(
              label: "Pesan",
              icon: SvgPicture.asset("assets/images/chat.svg"),
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/person.svg"),
                label: "Profil"),
          ]),
    );
  }
}
