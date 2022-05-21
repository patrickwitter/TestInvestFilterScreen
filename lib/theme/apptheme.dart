// ignore_for_file: library_prefixes

import 'package:filter_page/theme/lightThemeDetails.dart' as lightTheme;
import 'package:filter_page/theme/darkThemeDetails.dart' as darkTheme;
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xFFE5E5E5),
    textButtonTheme: lightTheme.lightTextButton,
    iconTheme: lightTheme.lightIcon,
    textTheme: lightTheme.lightTextTheme,
  );

  static ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF00101F),
    textButtonTheme: darkTheme.darkTextButton,
    iconTheme: darkTheme.darkIcon,
    textTheme: darkTheme.darkTextTheme,
  );
}
