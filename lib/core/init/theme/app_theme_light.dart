import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import 'app_theme.dart';
import 'light/color_scheme_light.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static late AppThemeLight _instance;
  static AppThemeLight get instance {
    _instance = AppThemeLight._init();

    return _instance;
  }

  AppThemeLight._init();

  // ThemeData get theme => redTheme;
  @override
  ThemeData get theme => ThemeData(
        primaryColor: _appColorScheme().primary,
        fontFamily: AppConstants.FONT_FAMILY,
        colorScheme: _appColorScheme(),
        textTheme: textTheme(),
        canvasColor: Colors.transparent,
        appBarTheme: _appBarTheme(),
        scaffoldBackgroundColor: ColorSchemeLight.instance.colorSolidBlack,
        iconTheme: IconThemeData(color: ColorSchemeLight.instance.colorWhite)
            .copyWith(),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        //     tabBarTheme: tabBarTheme(),
      ).copyWith();

  TextTheme textTheme() {
    return TextTheme(
        displayLarge: textThemeLight.headline1,
        displayMedium: textThemeLight.headline2,
        labelSmall: textThemeLight.headline3);
  }

  ColorScheme _appColorScheme() {
    return ColorScheme(
        primary: colorSchemeLight.colorBlue,
        secondary: colorSchemeLight.colorBlack,
        surface: Colors.white,
        background: colorSchemeLight.colorBlue,
        onPrimary: Colors.blue.shade300,
        onSecondary: Colors.black38,
        onSurface: Colors.white30,
        onBackground: Colors.black12,
        onError: Colors.red,
        brightness: Brightness.light,
        error: Colors.red);
  }

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: colorSchemeLight.colorWhite,
          size: 32,
        )).copyWith();
  }
}
