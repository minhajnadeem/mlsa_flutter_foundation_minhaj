import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'package:flutter_foundations_01/view/LoginScreen.dart';
import 'package:flutter_foundations_01/view/MyHomePage.dart';
import 'package:flutter_foundations_01/view/SecondScreen.dart';
import 'package:flutter_foundations_01/view/SplashScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeLight,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
