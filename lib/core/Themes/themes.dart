import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    MaterialColor yellowPrimaryColor = const MaterialColor(0xFFEEBf63, const {
      50: const Color(0xFFEEBf63),
      100: const Color(0xFFEEBf63),
      200: const Color(0xFFEEBf63),
      300: const Color(0xFFEEBf63),
      400: const Color(0xFFEEBf63),
      500: const Color(0xFFEEBf63),
      600: const Color(0xFFEEBf63),
      700: const Color(0xFFEEBf63),
      800: const Color(0xFFEEBf63),
      900: const Color(0xFFEEBf63)
    });
    return ThemeData(
      primarySwatch: yellowPrimaryColor,
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: isDarkTheme ? Colors.white : Color(0xFFEEBf63),
      backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F1F1),
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Color(0xff9B9B9B) : Color(0xffEECED3),
      highlightColor: isDarkTheme ? Color(0xffCD921E) : Color(0xFFEEBf63),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xffCD921E),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: isDarkTheme ? Color(0xffEEBF63) : Colors.white,
        selectionColor: isDarkTheme ? Colors.white : Colors.black,
      ),
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
