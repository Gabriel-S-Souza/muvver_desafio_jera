import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ColorsApp.white,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ColorsApp.green,
        onPrimary: ColorsApp.green,
        secondary: ColorsApp.black,
        onSecondary: ColorsApp.blackLight,
        error: ColorsApp.error,
        onError: ColorsApp.error,
        background: ColorsApp.white,
        onBackground: ColorsApp.black,
        surface: ColorsApp.greenLight,
        onSurface: ColorsApp.greenLight,
        onTertiary: ColorsApp.greenLight,
        outline: ColorsApp.black,
        tertiary: ColorsApp.gray,
        surfaceTint: ColorsApp.greenLight,
      ),
      shadowColor: ColorsApp.black.withOpacity(0.25),
      fontFamily: 'TitilliumWeb',
      toggleableActiveColor: ColorsApp.green,
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 36,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          color: ColorsApp.black
        ),
        headline2: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: ColorsApp.black
        ),
        headline3: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
       headline4: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black
        ),
        headline5: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black.withOpacity(0.5)
        ),
        headline6: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: ColorsApp.white
        ),
        bodyText1: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black
        ),
        subtitle1: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black
        ),
        bodyText2: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorsApp.black
        ),
      ));
}

class ColorsApp {
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF16A45C);
  static const Color greenLight = Color(0xFF24B96E);
  static const Color gray = Color(0xFFB8B8B8);
  static const Color black = Color(0xFF222222);
  static const Color blackLight = Color(0xFF353740);
  static const Color error = Colors.red;
}
