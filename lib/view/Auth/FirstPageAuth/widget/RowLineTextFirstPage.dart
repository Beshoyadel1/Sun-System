import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../view/Auth/AuthWidget/LineAuth.dart';

class RowLineTextFirstPage extends StatelessWidget {
  const RowLineTextFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: LineAuth()),
        Flexible(child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 8),
          child: AppText(
            text: LanguagePath.orRegisterVia,
            style: Fontspath.appTextStyle(
              fontSize: 16,
              fontWeightIndex: FontSelectionData.fontW400,
              color: AppColors.darkBlueColor,
            ),
          ),
        ),),
        const Expanded(child: LineAuth()),
      ],
    );
  }
}
