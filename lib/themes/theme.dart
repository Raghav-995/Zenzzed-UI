import 'package:flutter/material.dart';

var lColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(0, 3, 18, 37),
    onSecondaryContainer: Colors.grey);

var dColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(110, 1, 4, 19));

ThemeData lightTheme = ThemeData().copyWith(
    colorScheme: lColorScheme,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lColorScheme.onPrimary,
    appBarTheme: AppBarTheme(backgroundColor: lColorScheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          // Adjust as needed
        ),
        backgroundColor: lColorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 16.0),
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
