import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    // primarySwatch: primaryColur,
    // // primaryColor: Colors.red, //it is not woking with light theme
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: primaryClr, //its ok with appbar btn directly
      secondary: pinkClr, //floating action btn directly
      brightness: Brightness.light,
    ),
  );
  // primaryswatch is not working with appbar in dark mode
  static final dark = ThemeData.dark().copyWith(
    // primaryColor: Colors.pink, //it is not working
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: darkGreyClr, //its ok with appbar btn directly
      secondary: yellowClr, //floating action btn directly
    ),
  );
}
