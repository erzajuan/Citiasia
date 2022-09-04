import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterAuth extends StatelessWidget {
  const RegisterAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Daftar Akun',
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
                "Daftar akun toko blanjaloka",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 15,
              top: 45,
              child: Text(
                "Lengkapi data dibawah untuk melengkapi akun toko blanjaloka",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            Positioned(
              left: 15,
              top: 100,
              child: Text(
                "Nama Lengkap",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 125, left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Silahkan gunakan nama sesuai dengan KTP anda"),
                )),
            Container(
              margin: EdgeInsets.only(top: 300, left: 15),
              child: Text(
                "Alamat Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            Positioned(
              left: 15,
              top: 200,
              child: Text(
                "Nomor Telepon",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 220, left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Silahkan masukan nomor telepon anda"),
                )),
            Container(
                margin: EdgeInsets.only(top: 330, left: 15),
                child: Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Silahkan masukan Email anda",
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 350),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Daftar"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  padding:
                                      EdgeInsets.fromLTRB(150, 20, 150, 20)),
                            )),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
