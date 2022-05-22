// ignore_for_file: library_prefixes

import 'package:filter_page/theme/lighttheme_details.dart' as lightTheme;
import 'package:filter_page/theme/darktheme_details.dart' as darkTheme;
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    cardColor: const Color(0xFF48E3FF),
    iconTheme: lightTheme.lightIcon,
    textTheme: lightTheme.lightTextTheme,
  );

  static ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF00101F),
    cardColor: const Color(0xFF48E3FF),
    iconTheme: darkTheme.darkIcon,
    textTheme: darkTheme.darkTextTheme,
  );
}
