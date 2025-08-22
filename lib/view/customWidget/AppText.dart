import 'package:flutter/cupertino.dart';
import 'package:sun_system/Controller/Cubit/language.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? align;
  final int? maxLines;

  const AppText({
    super.key,
    required this.text,
    required this.style,
    this.align,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final translated = AppLocalizations.maybeOf(context)?.translate(text) ?? text;
    return Text(
      translated,
      style: style,
      textAlign: align,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
