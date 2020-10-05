import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const PRIMARY_COLOR = Color(0xFF00A6E2);
  static const DARK_COLOR = Color(0xFF13273F);
  static const DARK_ACCENT_COLOR = Color(0xFF031222);
  static const DARK_ACCENT_COLOR1 = Color(0xFF34383D);
  static const DARK_ACCENT_COLOR2 = Color(0xFF091B31);
  static const ACCENT_COLOR = Color(0xFF004688);
  static const WHITE_COLOR = Color(0xFFFFFFFF);
  static const GREY_COLOR = Color(0xFFCFCFCF);
  static const GREEN_COLOR = Colors.green;
  static const YELLO_COLOR = Color(0xFFE77110);
  // static const GREY_ACCENT_COLOR = Colors.grey.shade100;

  static ThemeData get themeDara => ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
        primaryColorLight: PRIMARY_COLOR,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
