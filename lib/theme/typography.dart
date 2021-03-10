import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTypography {
  static TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.montserrat(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: GoogleFonts.montserrat(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black),
      headline3: GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w500, color: Colors.black),
      headline4: GoogleFonts.montserrat(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
      headline5: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
      headline6: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),

      subtitle1: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
      subtitle2: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),

      bodyText1: GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
      bodyText2: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),

      button: GoogleFonts.montserrat(fontSize: 20),
      caption: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
      overline: GoogleFonts.montserrat(fontSize: 10));
}
