import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color primaryColor = Color(0xFF203A61);
  static const Color secondaryColor = Color(0xFF0078D4);
  static const Color primaryLightColor = Color(0xffb2dcf2);
  static const Color primaryTextColor = Color(0xFF212121);
  static const Color secondaryTextColor = Color(0xFF757575);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color iconColor = Color(0xFFFFFFFF);
  static const Color accentColor = Color(0xFFff4081);
  static const Color dividerColor = Color(0xFFBDBDBD);

  static const Color primaryColorDark = Color(0xFF000000);
  static const Color onPrimaryColorDark = Color(0xFFFFFFFF);

  static final ColorScheme colorSchemeLight = ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    onPrimary: onPrimaryColor,
    secondary: secondaryColor,
    background: primaryLightColor,
  );
  static final ColorScheme colorSchemeDark = ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColorDark,
    onPrimary: onPrimaryColorDark,
    secondary: secondaryColor,
    background: primaryLightColor,
  );
}
