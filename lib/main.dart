import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/View/home_page.dart';
import 'package:zenzzed/splashscreen.dart';
import 'package:zenzzed/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Splash Screen Example',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
