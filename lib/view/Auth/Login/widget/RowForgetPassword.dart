import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class RowForgetPassword extends StatelessWidget {
  const RowForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          text: LanguagePath.forgetPassword,
          style: Fontspath.appTextStyle(
            fontSize: 16,
            fontWeightIndex: FontSelectionData.fontW600,
            color: AppColors.blackColor,
          ),
        ),
        const SizedBox(width: 12),
        AppText(
          text: LanguagePath.redeemHere,
          style: Fontspath.appTextStyle(
            fontSize: 14,
            underline: true,
            fontWeightIndex: FontSelectionData.fontW600,
            color: AppColors.orangeColor.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
