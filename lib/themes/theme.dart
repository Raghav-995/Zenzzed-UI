import 'package:flutter/material.dart';

var lColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(0, 3, 18, 37),
);

var dColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(110, 1, 4, 19));

ThemeData lightTheme = ThemeData().copyWith(
    colorScheme: lColorScheme,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: lColorScheme.onPrimary,
    appBarTheme: AppBarTheme(backgroundColor: lColorScheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(lColorScheme.primary),
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 40.0)),
      ),
    ),
    textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: lColorScheme.onPrimary,
          fontSize: 24,
        ),
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: lColorScheme.onPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: lColorScheme.onPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: lColorScheme.onPrimary,
        )));

ThemeData darkTheme = ThemeData().copyWith(
    colorScheme: dColorScheme,
    brightness: Brightness.dark,
    textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: lColorScheme.onSecondaryContainer,
          fontSize: 24,
        ),
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: lColorScheme.onSecondaryContainer,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: lColorScheme.onSecondaryContainer,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: lColorScheme.onSecondaryContainer,
        )));
