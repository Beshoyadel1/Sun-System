import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Fontspath {
  static TextStyle? w400readexPro17({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
  static TextStyle? w400readexPro12({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
  static TextStyle? w400readexPro14({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
  static TextStyle? w400readexPro16({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
  static TextStyle? w500readexPro18({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
  static TextStyle? w500readexPro22({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
  static TextStyle? w500readexPro26({required Color color}) {
    return GoogleFonts.readexPro(
      decoration: TextDecoration.none,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
  static TextStyle w600LamaSans16({required Color color}) {
    return TextStyle(
      fontFamily: 'LamaSans',
      decoration: TextDecoration.none,
      fontSize: 16,
      fontWeight: FontWeight.w600, // SemiBold
      color: color,
    );
  }
  static TextStyle w600LamaSans18({required Color color}) {
    return TextStyle(
      fontFamily: 'LamaSans',
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.w600, // SemiBold
      color: color,
    );
  }
  static TextStyle w600LamaSans14underline({required Color color}) {
    return TextStyle(
      fontFamily: 'LamaSans',
      fontSize: 14,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w600, // SemiBold
      color: color,
      decorationColor:color,
    );
  }
}
