import 'package:core_designsystem/src/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        tertiary: AppColors.tertiaryLight,
        surface: AppColors.backgroundLight,
        error: AppColors.error,
        onPrimary: AppColors.textDark,
        onSecondary: AppColors.textLight,
        onTertiary: AppColors.textLight,
        onSurface: AppColors.textLight,
        onError: AppColors.textDark,
        scrim: AppColors.grey_1,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        tertiary: AppColors.tertiaryDark,
        surface: AppColors.backgroundDark,
        error: AppColors.error,
        onPrimary: AppColors.textDark,
        onSecondary: AppColors.textLight,
        onTertiary: AppColors.textLight,
        onSurface: AppColors.textDark,
        onError: AppColors.textDark,
        scrim: AppColors.grey_1,
      ),
    );
  }
}
