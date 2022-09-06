import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: CustomColors.backgroundLight,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: CustomColors.primary,
        onPrimary: CustomColors.primaryDark,
        secondary: CustomColors.backgroundLight,
        onSecondary: CustomColors.backgroundDark,
        error: CustomColors.error,
        onError: CustomColors.error,
        background: CustomColors.backgroundLight,
        onBackground: CustomColors.backgroundLightMedium,
        surface: CustomColors.backgroundDarkMedium,
        onSurface: CustomColors.backgroundDark,
        onSurfaceVariant: CustomColors.backgroundContainerDark,
        tertiary: CustomColors.white,
        surfaceVariant: CustomColors.accent,
        shadow: CustomColors.blackLight,
        inversePrimary: CustomColors.black,
        onPrimaryContainer: CustomColors.grey,
        onSecondaryContainer: CustomColors.greyLight,
        inverseSurface: CustomColors.lightBackground,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: CustomColors.blackLightMedium,
        selectionColor: CustomColors.blackLightMedium,
        selectionHandleColor: CustomColors.white,
      ),
      fontFamily: 'Montserrat',
      scrollbarTheme: ScrollbarThemeData(
        thumbColor:
            MaterialStateProperty.all(CustomColors.grey.withOpacity(0.6)),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontFamily: 'Calibri',
          fontWeight: FontWeight.w800,
        ),
        bodyText2: TextStyle(
          fontSize: 12,
          fontFamily: 'Calibri',
          fontWeight: FontWeight.w800,
        ),
        subtitle1: TextStyle(
          fontSize: 14,
          color: CustomColors.white,
          fontWeight: FontWeight.bold,
        ),
      ));
}

class CustomColors {
  static const Color primary = Color(0xFFFFAB00);
  static const Color primaryDark = Color(0xFFDE9C2E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFF00A2AC);
  static const Color backgroundLightMedium = Color(0xFF018189);
  static const Color backgroundDarkMedium = Color(0xFF016A71);
  static const Color backgroundDark = Color(0xFF00585D);
  static const Color backgroundContainerDark = Color(0xFF0D575D);
  static const Color error = Color(0xFFB00020);
  static const Color splashColor = Color(0xFF0FB2AA);
  static const Color accent = Color(0xFF80D1D6);

  static const Color black = Colors.black;
  static const Color blackLightMedium = Colors.black54;
  static const Color blackLight = Colors.black38;
  static const Color grey = Color(0xFF6F6F6F);
  static const Color greyLight = Color(0xFFA0A0A0);
  static const Color lightBackground = Color(0xFFF5F7F6);
}
