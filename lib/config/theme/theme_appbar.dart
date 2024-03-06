import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  // fontFamily: GoogleFonts.inter().fontFamily,
  // textTheme: GoogleFonts.interTextTheme(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black87),
    elevation: 1,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
  ),
);
