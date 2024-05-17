import 'package:flutter/material.dart';
import 'package:sports_ui/utils/my_colors.dart';

class AppTheme {
  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.mainThemeColor,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    bottomAppBarTheme: BottomAppBarTheme(color: AppColors.secondaryThemeColor),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: AppColors.secondaryThemeColor),
  );
}
