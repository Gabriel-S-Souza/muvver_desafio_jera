import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: CustomColors.white,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: CustomColors.green,
        onPrimary: CustomColors.green,
        secondary: CustomColors.black,
        onSecondary: CustomColors.black,
        error: CustomColors.error,
        onError: CustomColors.error,
        background: CustomColors.white,
        onBackground: CustomColors.white,
        surface: CustomColors.greenLight,
        onSurface: CustomColors.greenLight,
        onTertiary: CustomColors.greenLight,
        outline: CustomColors.black,
        tertiary: CustomColors.gray,
        surfaceTint: CustomColors.greenLight
      ),
      fontFamily: 'TitilliumWeb',
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w400,
        ),
        headline2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        headline3: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        headline4: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
        subtitle1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ));
}

class CustomColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF16A45C);
  static const Color greenLight = Color(0xFF24B96E);
  static const Color gray = Color(0xFFB8B8B8);
  static const Color black = Color(0xFF222222);
  static const Color blackLight = Color(0xFF353740);
  static const Color error = Colors.red;
}
