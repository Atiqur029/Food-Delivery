import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData _darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.dark,
);

ThemeData getDarkTheme() => _darkTheme;

final ThemeData _lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
);

ThemeData getLightTheme() => _lightTheme;
