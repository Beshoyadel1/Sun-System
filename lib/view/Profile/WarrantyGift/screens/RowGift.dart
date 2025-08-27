import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';

class RowGift extends StatelessWidget {
  const RowGift({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: LanguagePath.congratulationsGift,
          style: Fontspath.appTextStyle(
            fontSize: 20,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.lightBlackColor,
          ),
          maxLines: 1, // optional: keep single line
        ),
        const SizedBox(width: 5,),
        AppText(
          text: LanguagePath.warrantyGift,
          style: Fontspath.appTextStyle(
            fontSize: 20,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.orangeColor,
          ),
          maxLines: 1, // optional: keep single line
        ),
      ],
    );
  }
}
