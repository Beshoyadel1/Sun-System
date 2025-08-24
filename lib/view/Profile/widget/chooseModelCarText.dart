import 'package:flutter/cupertino.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';
import '../../../utiles/assets/Fontspath.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../../view/customWidget/AppText.dart';

class chooseModelCarText extends StatelessWidget {
  const chooseModelCarText({super.key});

  @override
  Widget build(BuildContext context) {
    return AppText(
      text: LanguagePath.chooseYourCarModel,
      style: Fontspath.appTextStyle(
        fontSize: 16,
        fontWeightIndex: FontSelectionData.fontW400,
        color: AppColors.darkBlackColor,
      ),
    );
  }
}
