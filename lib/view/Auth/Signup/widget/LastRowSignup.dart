import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class LastRowSignup extends StatelessWidget {
  const LastRowSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: LanguagePath.createAnAccountInTheNameOfACompany,
          style: Fontspath.appTextStyle(
            fontSize: 16,
            color: AppColors.blackColor,
            fontWeightIndex: FontSelectionData.fontW600,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {},
          child: AppText(
            text: LanguagePath.registerHere,
            style: Fontspath.appTextStyle(
              fontSize: 14,
              underline: true,
              color: AppColors.orangeColor,
              fontWeightIndex: FontSelectionData.fontW600,
            ),
          ),
        ),
      ],
    );
  }
}
