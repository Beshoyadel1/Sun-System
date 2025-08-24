import 'package:flutter/cupertino.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/languagePath.dart';
import 'package:sun_system/view/customWidget/AppText.dart';

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
