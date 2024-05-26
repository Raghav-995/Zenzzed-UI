import 'package:flutter/material.dart';

var lColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.blue.shade900,
);

var dColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blue.shade900,
    //const Color.fromARGB(237, 0, 4, 10),
    onSecondaryContainer: Colors.white,
    background: Colors.black12);

ThemeData lightTheme = ThemeData().copyWith(
    colorScheme: lColorScheme,
    brightness: Brightness.dark,
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
          fontWeight: FontWeight.normal,
          color: lColorScheme.onPrimary,
        )));

ThemeData darkTheme = ThemeData().copyWith(
    colorScheme: dColorScheme,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(backgroundColor: dColorScheme.primary),
    scaffoldBackgroundColor: dColorScheme.background,
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
