import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 57, 138, 185);
const Color btnSecondaryColor = Color.fromARGB(255, 240, 240, 240);
const Color secondaryColor = Colors.blue;
const Color lightPrimaryColor = Color(0xFFFFFFFF);
const Color darkPrimaryColor = Color(0xFF000000);

var styleButtonSecondary = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: EdgeInsets.all(17),
  backgroundColor: btnSecondaryColor,
  side: const BorderSide(color: lightPrimaryColor),
);

var styleButtonPrimary = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    padding: EdgeInsets.all(17),
    backgroundColor: primaryColor);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(color: primaryColor),
);
