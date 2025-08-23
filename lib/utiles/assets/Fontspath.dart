import 'package:flutter/material.dart';
import '../../utiles/assets/FontSelectionData.dart';
class Fontspath {
  static TextStyle appTextStyle({
    required Color color,
    required double fontSize ,
    int? fontWeightIndex,
    bool underline = false,
  }) {
    return TextStyle(
      fontFamily: AppFonts.lamaSansFontFamily,
      fontWeight: fontWeightSelection(fontWeightIndex: fontWeightIndex),
      fontSize: fontSize,
      color: color,
      decoration: underline ? TextDecoration.underline : TextDecoration.none,
      decorationColor: underline ? color : null,
    );
  }
}
