import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';


class TextchooseYourFavoriteServices extends StatelessWidget {
  const TextchooseYourFavoriteServices({super.key});

  @override
  Widget build(BuildContext context) {
    return AppText(
      text: LanguagePath.chooseYourFavoriteServices,
      style: Fontspath.appTextStyle(
        fontSize: 14,
        fontWeightIndex: FontSelectionData.fontW400,
        color: AppColors.lightBlackColor,
      ),
    );
  }
}
