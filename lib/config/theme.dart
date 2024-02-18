import 'package:flutter/material.dart';
import 'package:songz/config/colors.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: bgColor,
    primary: primColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: "CocoGothic",
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: fontColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "CocoGothic",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: fontColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "CocoGothic",
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: labelColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "CocoGothic",
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: labelColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "CocoGothic",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
  ),
);
