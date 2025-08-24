import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class FirstTitleSignup extends StatelessWidget {
  const FirstTitleSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppText(
          text: LanguagePath.registerANewAccount,
          style: Fontspath.appTextStyle(
            fontSize: 22,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.lightBlackColor,
          ),
        ),
        const SizedBox(height: 15),
        AppText(
          text: LanguagePath.pleaseEnterYourAccountInformationAndPassword,
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
