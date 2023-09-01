import 'package:book_show/utils/themes/app_color_theme.dart';
import 'package:book_show/utils/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
        primaryColor: AppColor.primaryColor,
        scaffoldBackgroundColor: AppColor.primaryColor,
        fontFamily: GoogleFonts.roboto().fontFamily,
        appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0.0),
        textTheme: AppThemeText.getTextTheme());
  }
}
