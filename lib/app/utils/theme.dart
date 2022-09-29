import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xff398AB9);
Color blackColor = Color.fromARGB(255, 0, 0, 0);
Color blackFont = Color(0xFF141414);
Color whiteColor = Colors.white;
Color grey1 = Color.fromARGB(255, 240, 240, 240);
Color grey2 = Color.fromARGB(255, 240, 240, 240);
Color grey3 = Color.fromARGB(255, 174, 174, 174);
Color grey4 = Color.fromARGB(255, 104, 104, 104);
Color grey5 = Color.fromARGB(255, 62, 64, 65);
Color blue3 = Color.fromARGB(255, 215, 232, 241);

double edge24 = 24;

var defaultLargeMargin = 24.0;
var defaultMargin = 18.0;
var defaultSmallMargin = 9.0;
var defaultRadius = 18.0;

FontWeight bold = FontWeight.w700;
FontWeight semiBold = FontWeight.w600;
FontWeight medium = FontWeight.w500;
FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.normal;

FontStyle italic = FontStyle.italic;

TextStyle header1 = GoogleFonts.poppins(
  color: blackFont,
  fontSize: 16,
  fontWeight: semiBold,
);

TextStyle header2 = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 18,
  fontWeight: semiBold,
);

TextStyle normal = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 12,
  fontWeight: reguler,
);

TextStyle formText = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 14,
  fontWeight: medium,
);

TextStyle title = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 48,
  fontWeight: bold,
);

TextStyle engText = GoogleFonts.poppins(
  color: primaryColor,
  fontSize: 14,
  fontStyle: italic,
  fontWeight: reguler,
);

TextStyle whiteText = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 14,
  fontWeight: semiBold,
);
TextStyle blackText = GoogleFonts.poppins(
  color: blackFont,
  fontSize: 14,
  fontWeight: semiBold,
);

TextStyle greenText = GoogleFonts.poppins(
  color: primaryColor,
  fontSize: 12,
  fontWeight: semiBold,
);

TextStyle greenText2 = GoogleFonts.poppins(
  color: primaryColor,
  fontSize: 14,
  fontWeight: medium,
);

TextStyle grey4Text = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
  color: grey4,
  fontSize: 14,
);

TextStyle grey5Text = GoogleFonts.inter(
  fontWeight: FontWeight.w500,
  color: grey4,
  fontSize: 16,
);

TextStyle button = GoogleFonts.poppins(
  fontWeight: FontWeight.w300,
  color: whiteColor,
  fontSize: 24,
);
