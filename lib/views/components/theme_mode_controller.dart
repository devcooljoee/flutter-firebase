import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/theme/theme_data.dart';

class ThemeModeController extends StatefulWidget {
  final ThemeData islightMode = lightMode;
  final ThemeData isdarkMode = darkMode;
  ThemeModeController({super.key});

  @override
  State<ThemeModeController> createState() => _ThemeModeControllerState();
}

class _ThemeModeControllerState extends State<ThemeModeController> {
  bool islightMode = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: islightMode,
        onChanged: (bool isdarkMode) {
          setState(() {
            islightMode = isdarkMode;
          });
        });
  }
}
