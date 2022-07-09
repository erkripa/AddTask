import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF456347);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primarySwatch: Colors.red,
    // primaryColor: Colors.red,
    brightness: Brightness.light,
  );
  // primaryswatch is not working in dark mode
  static final dark = ThemeData.dark().copyWith(
    // primaryColor: Colors.pink, //it is not working

    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.blue,
      secondary: Colors.red,
    ),
  );
}
