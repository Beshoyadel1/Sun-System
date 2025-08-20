import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';

class Textfeildauth extends StatefulWidget {
  final bool isPassword;
  final bool isNumber;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const Textfeildauth({
    super.key,
    this.isPassword = false,
    this.isNumber = false,
    this.controller,
    this.onChanged,
  });

  @override
  State<Textfeildauth> createState() => _TextfeildauthState();
}

class _TextfeildauthState extends State<Textfeildauth> {
  TextAlign _textAlign = TextAlign.start;
  TextDirection _textDirection = TextDirection.ltr;

  bool _isArabic(String text) {
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return TextField(
      controller: widget.controller,
      textAlign: _textAlign,
      textDirection: _textDirection,
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
      obscureText: widget.isPassword,
      inputFormatters:
      widget.isNumber ? [FilteringTextInputFormatter.digitsOnly] : null,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.04),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColors.graycolor.withOpacity(0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(color: AppColors.orangecolor.withOpacity(0.7), width: 1),
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          if (_isArabic(value.characters.first)) {
            setState(() {
              _textAlign = TextAlign.end;
              _textDirection = TextDirection.ltr;
            });
          } else {
            setState(() {
              _textAlign = TextAlign.start;
              _textDirection = TextDirection.rtl;
            });
          }
        }
        if (widget.onChanged != null) widget.onChanged!(value);
      },
    );
  }
}
