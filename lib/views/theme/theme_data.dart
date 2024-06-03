import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400,
    primary: Colors.grey.shade200,
  ),
  textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade600,
  ),
  textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
);
