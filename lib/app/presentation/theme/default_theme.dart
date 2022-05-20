import 'package:flutter/material.dart';
import 'package:qyre_test_app/app/presentation/theme/palette.dart';

final defaultTheme = ThemeData(
  brightness: Brightness.light,

  colorScheme: const ColorScheme(
    background: Palette.white,
    brightness: Brightness.light,
    error: Palette.red,
    onBackground: Palette.black,
    onError: Palette.white,
    onPrimary: Palette.white,
    onSecondary: Palette.black,
    onSurface: Palette.black,
    primary: Palette.blue,
    secondary: Palette.red,
    surface: Palette.gray25,
  ),

  /// Default font
  fontFamily: 'Matter TRIAL',

  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Palette.black50,
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
    ),
    headline2: TextStyle(
      color: Palette.black,
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    headline3: TextStyle(
      color: Palette.black,
      fontWeight: FontWeight.w600,
      fontSize: 14.0,
    ),
    headline4: TextStyle(
      color: Palette.white,
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    headline6: TextStyle(
      color: Palette.black10,
      fontWeight: FontWeight.w400,
      height: 9.5,
      fontSize: 10.0,
    ),

    /// Body fonts
    bodyText1: TextStyle(
      color: Palette.black,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
    ),
    bodyText2: TextStyle(
      color: Palette.black10,
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
    ),
  ),
);
