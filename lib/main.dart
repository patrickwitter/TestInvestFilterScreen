import 'package:filter_page/pages/filterpage.dart';
import 'package:filter_page/theme/apptheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.dark,
      theme: AppTheme.light,
      home: const FilterPage(),
    );
  }
}
