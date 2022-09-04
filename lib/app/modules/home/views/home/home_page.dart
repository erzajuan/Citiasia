import 'package:citiasia/app/modules/home/views/auth/login.dart';
import 'package:citiasia/app/modules/home/views/auth/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/json_ast.dart';

class HomePage extends StatelessWidget {
  final Widget child;
  const HomePage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      // width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: -10,
              child: Image.asset(
                "assets/images/logo.png",
                width: size.width,
              )),
          Positioned(
              top: -155,
              right: -150,
              child: Image.asset(
                "assets/images/home-image2.png",
                width: size.width,
              )),
          Container(
            child: Positioned(
              top: -200,
              child: Image.asset(
                "assets/images/home-image.png",
                height: size.height,
                width: size.width,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    "Halo Pedagang Blanjaloka!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 50),
                  child: Text(
                    'Jual dan kelola daganganmu lebih mudah \n dengan aplikasi blanjaloka.',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginAuth();
                        }));
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          padding: EdgeInsets.fromLTRB(150, 20, 150, 20)),
                    )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("or")],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned(
                        child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const RegisterAuth();
                        })));
                      },
                      child: Text("Daftar"),
                      style: OutlinedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          padding: EdgeInsets.fromLTRB(150, 20, 150, 20)),
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
