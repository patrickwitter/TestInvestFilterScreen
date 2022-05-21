// ignore_for_file: file_names

/*
  headline4 for the main  title of the page
  headline5 for the sub-titles of the page 
  button is for the buttons of the page 
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme darkTextTheme = TextTheme(
  headline4: GoogleFonts.oxygen(
    fontSize: 18,
    color: const Color(0xFFFFFFFF),
    fontWeight: FontWeight.w700,
  ),
  headline5: GoogleFonts.oxygen(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  ),
  button: GoogleFonts.oxygen(
    fontSize: 10,
    color: const Color.fromRGBO(255, 255, 255, .3),
  ),
);

IconThemeData darkIcon = const IconThemeData(
  color: Color(0xFF062644),
);

TextButtonThemeData darkTextButton = TextButtonThemeData(
  style: TextButton.styleFrom(
    primary: const Color(0xFF48E3FF),
    textStyle: GoogleFonts.oxygen(
      fontSize: 16,
      color: const Color(0xFF00101F),
    ),
  ),
);
