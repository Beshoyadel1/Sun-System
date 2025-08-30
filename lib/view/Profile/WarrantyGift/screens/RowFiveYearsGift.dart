import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';


class RowFiveYearsGift extends StatelessWidget {
  const RowFiveYearsGift({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: AppText(
          text: LanguagePath.fiveYearsGift,
          style: Fontspath.appTextStyle(
            fontSize: 20,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.blackColor,
          ),
          maxLines: 1, // optional: keep single line
        ),)
      ],
    );
  }
}
