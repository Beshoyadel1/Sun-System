import 'package:flutter/cupertino.dart';
import '../../Controller/Cubit/language.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? align;
  final int? maxLines;
  final double? widthText;
  final double? heightText;
  final TextOverflow? overflow;

  const AppText({
    super.key,
    required this.text,
    required this.style,
    this.align,
    this.maxLines,
    this.widthText,
    this.heightText,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final translated = AppLocalizations.maybeOf(context)?.translate(text) ?? text;

    return SizedBox(
      width: widthText,
      height: heightText,
      child: Text(
        translated,
        style: style,
        textAlign: align,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}
