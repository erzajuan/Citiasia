import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "Masuk",
                style: TextStyle(color: Colors.black),
              ),
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Stack(
              children: [
                Positioned(
                  left: 15,
                  top: 20,
                  child: Text(
                    "Masuk Akun Toko Blanjaloka",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 45,
                  child: Text(
                    "Masukan Email atau Nomor Telepon dan Kata Sandi",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 60,
                  child: Text(
                    "Anda yang sudah terdaftar",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 125,
                  child: Text(
                    "Masukan Email/Nomor Telepon",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 150, left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Masukan Email/No Telepon anda"),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 240, left: 15),
                  child: Text(
                    "Kata Sandi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 280, left: 15),
                    child: Column(
                      children: [
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Masukan Kata Sandi Anda",
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_off),
                                onPressed: () {
                                  _isObscure = !_isObscure;
                                },
                              )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                "Lupa Password?",
                                style: TextStyle(color: Colors.lightBlueAccent),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 350),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Masuk"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.lightBlueAccent,
                                      padding: EdgeInsets.fromLTRB(
                                          150, 20, 150, 20)),
                                )),
                          ],
                        ),
                      ],
                    )),
              ],
            )));
  }
}
