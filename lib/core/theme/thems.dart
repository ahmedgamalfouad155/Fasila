import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  brightness: Brightness.light,
  useMaterial3: true,
  extensions: const [
    AppColors(
      black: Color(0xff000000),
      teal: Color(0xff076B5F),
      white: Color(0xffFFFFFF),
      offWhite: Color(0xffF3F8F7),
      grey: Color(0xff666666),
      green: Color(0xff3AA14C),
    ),
  ],
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  extensions: const [
    AppColors(
      black: Color.fromARGB(255, 234, 175, 27),
      teal: Color(0xffFF7A33),
      white: Color.fromARGB(255, 36, 36, 36),
      offWhite: Color(0xff1E1E1E),
      grey: Color(0xff666666),
      green: Color(0xff4CAF50),
    ),
  ],
);
