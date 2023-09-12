import 'package:flutter/material.dart';

class ColorSchemeLight {
  static late ColorSchemeLight _instance;
  static ColorSchemeLight get instance {
    _instance = ColorSchemeLight._init();
    return _instance;
  }

  ColorSchemeLight._init();

  final Color colorBlue = const Color(0xFF00C6B8);
  final Color colorSolidBlack = const Color(0xFF393e46);
  final Color colorBlack = const Color(0xFF222831);
  final Color colorWhite = const Color(0xFFeeeeee);
}
