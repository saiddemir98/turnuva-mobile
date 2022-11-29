import 'package:flutter/material.dart';
import 'package:clean/configuration/constants.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarThemes.dark,
    textTheme: TextThemes.darkTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemes.dark,
  );
  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarThemes.light,
    textTheme: TextThemes.lightTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemes.light,
  );
}

abstract class AppBarThemes {
  static AppBarTheme light = ThemeData.light().appBarTheme.copyWith(
        backgroundColor: ColorConstant.VGBLUE,
        centerTitle: true,
      );
  static AppBarTheme dark = ThemeData.dark().appBarTheme.copyWith(
        backgroundColor: ColorConstant.VGBLUE,
        centerTitle: true,
      );
}

abstract class TextThemes {
  static TextTheme lightTextTheme = ThemeData.light().textTheme;
  static TextTheme darkTextTheme = ThemeData.dark().textTheme;
}

abstract class BottomNavigationBarThemes {
  static BottomNavigationBarThemeData light =
      ThemeData.light().bottomNavigationBarTheme.copyWith(
            showUnselectedLabels: true,
            selectedItemColor: Colors.grey.shade600,
            unselectedItemColor: Colors.grey,
          );
  static BottomNavigationBarThemeData dark =
      ThemeData.dark().bottomNavigationBarTheme.copyWith(
            showUnselectedLabels: true,
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.grey.shade600,
          );
}
