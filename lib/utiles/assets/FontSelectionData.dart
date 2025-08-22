import 'package:flutter/material.dart';

// Font selection data
class FontSelectionData {
  static const int fontW700 = 1;
  static const int fontW600 = 2;
  static const int fontW500 = 3;
  static const int fontW400 = 4;

}

// App fonts
class AppFonts {
  static const String lamaSansFontFamily = 'LamaSans';
}

// Function to select font weight
FontWeight fontWeightSelection({int? fontWeightIndex}) {
  switch (fontWeightIndex) {
    case FontSelectionData.fontW700:
      return FontWeight.w700;
    case FontSelectionData.fontW600:
      return FontWeight.w600;
    case FontSelectionData.fontW500:
      return FontWeight.w500;
    case FontSelectionData.fontW400:
      return FontWeight.w400;
    default:
      return FontWeight.normal;
  }
}


