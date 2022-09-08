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
        onSecondary: CustomColors.blackLight,
        error: CustomColors.error,
        onError: CustomColors.error,
        background: CustomColors.white,
        onBackground: CustomColors.black,
        surface: CustomColors.greenLight,
        onSurface: CustomColors.greenLight,
        onTertiary: CustomColors.greenLight,
        outline: CustomColors.black,
        tertiary: CustomColors.gray,
        surfaceTint: CustomColors.greenLight,
      ),
      shadowColor: CustomColors.black.withOpacity(0.25),
      fontFamily: 'TitilliumWeb',
      toggleableActiveColor: CustomColors.green,
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
          color: CustomColors.black
        ),
        headline2: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: CustomColors.black
        ),
        headline3: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
       headline4: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: CustomColors.black
        ),
        headline5: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColors.black.withOpacity(0.5)
        ),
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColors.white.withOpacity(0.54)
        ),
        bodyText1: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColors.black
        ),
        subtitle1: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: CustomColors.black
        ),
        bodyText2: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: CustomColors.black
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
