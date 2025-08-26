import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';

class RowSunWarranty extends StatelessWidget {
  const RowSunWarranty({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: LanguagePath.warrantySun,
          style: Fontspath.appTextStyle(
            fontSize: 36,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.orangeColor,
          ),
          maxLines: 1, // optional: keep single line
        ),
      ],
    );
  }
}
