import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class FirstTitleOTP extends StatelessWidget {
  const FirstTitleOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppText(
          text: LanguagePath.confirmPassword,
          style: Fontspath.appTextStyle(
            fontSize: 22,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.lightBlackColor,
          ),
        ),
        const SizedBox(height: 15),
        AppText(
          text: LanguagePath.pleaseEnterThePasswordSentToYourPhoneNumber,
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
