// import 'package:educacao_portal/core/theme/input_theme.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'input_theme.dart';

ThemeData get colorsThemeData => ThemeData(
      colorScheme: AppColors.colorScheme,
      scaffoldBackgroundColor: AppColors.colorScheme.background,
      primaryColor: AppColors.colorScheme.primary,
      inputDecorationTheme: loginInputTheme,
    );
