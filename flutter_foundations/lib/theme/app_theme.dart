import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/theme/app_color.dart';
import 'package:flutter_foundations_01/theme/app_text.dart';

import '../constant/dimen.dart';

abstract final class AppTheme {
  static final appThemeLight = ThemeData(
    colorScheme: AppColors.colorSchemeLight,
    textTheme: AppText.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
      ),
    ),
  );

  static final appThemeDark = ThemeData(
    colorScheme: AppColors.colorSchemeDark,
    textTheme: AppText.textThemeDark,
  );

  static final textFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppDimen.textFieldRadius),
  );
  static final textFieldFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppDimen.textFieldRadius),
    borderSide: const BorderSide(color: AppColors.secondaryColor),
  );
}
