import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/theme/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppText {
  static const _appFont = GoogleFonts.lora;
  static final displayLarge = _appFont(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static final displayMedium = _appFont(
    fontSize: 25,
  );
  static final displaySmall = _appFont(
    fontSize: 20,
  );
  static final headlineLarge =
      _appFont(fontSize: 20, color: AppColors.primaryTextColor);
  static final headlineMedium = _appFont(
    fontSize: 18,
  );
  static final headlineSmall = _appFont(
    fontSize: 16,
  );
  static final titleLarge = _appFont(
    fontSize: 20,
  );
  static final titleMedium = _appFont(
    fontSize: 18,
  );
  static final titleSmall = _appFont(
    fontSize: 16,
  );
  static final bodyLarge = _appFont(
    fontSize: 20,
  );
  static final bodyMedium = _appFont(
    fontSize: 18,
  );
  static final bodySmall = _appFont(
    fontSize: 16,
  );
  static final labelLarge = _appFont(
    fontSize: 20,
  );
  static final labelMedium = _appFont(
    fontSize: 18,
  );
  static final labelSmall = _appFont(
    fontSize: 16,
  );

  static final headlineLargeDark =
      headlineLarge.copyWith(fontSize: 20, color: AppColors.onPrimaryColorDark);

  static final TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  static final TextTheme textThemeDark = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLargeDark,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );
}
