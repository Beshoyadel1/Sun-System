import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';

class FirstTitleFirstPage  extends StatelessWidget {
  const FirstTitleFirstPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppText(
          text: LanguagePath.login,
          style: Fontspath.appTextStyle(
            fontSize: 22,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.lightBlackColor,
          ),
        ),
        const SizedBox(height: 10),
        AppText(
          text: LanguagePath.logInAsAnIndividual,
          style: Fontspath.appTextStyle(
            fontSize: 14,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.lightBlackColor,
          ),
        ),
      ],
    );
  }
}
