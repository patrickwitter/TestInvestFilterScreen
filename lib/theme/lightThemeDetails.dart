// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

/*
  headline4 for the main  title of the page
  headline5 for the sub-titles of the page 
  button is for the buttons of the page 
*/

TextTheme lightTextTheme = TextTheme(
  headline4: GoogleFonts.oxygen(
    fontSize: 18.sp,
    color: const Color(0xFF00101F),
    fontWeight: FontWeight.w700,
  ),
  headline5: GoogleFonts.oxygen(
    fontSize: 16.sp,
    color: const Color(0xFF00101F),
    fontWeight: FontWeight.bold,
  ),
  button: GoogleFonts.oxygen(
    fontSize: 10.sp,
    color: const Color(0xFF00101F),
    fontWeight: FontWeight.bold,
  ),
);

IconThemeData lightIcon = const IconThemeData(
  color: Color(0xFFD9D9D9),
);

// TextButtonThemeData lightTextButton = TextButtonThemeData(
//   style: TextButton.styleFrom(
//     backgroundColor: ,
//     textStyle: GoogleFonts.oxygen(
//       fontSize: 16.sp,
//       color: const Color(0xFFFFFFFF),
//     ),
//   ),
// );
