import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../view/Auth/Signup/SignupPage.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../view/customWidget/NavigateToPageWidget.dart';

class LastRowTitleLogin extends StatelessWidget {
  const LastRowTitleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child:AppText(
          text: LanguagePath.dontHaveAccount,
          style: Fontspath.appTextStyle(
            fontSize: 16,
            fontWeightIndex: FontSelectionData.fontW600,
            color: AppColors.blackColor,
          ),
          maxLines: 1,
        ),
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              NavigateToPageWidget(const SignupPage()),
            );
          },
          child: AppText(
            text: LanguagePath.registerHere,
            style: Fontspath.appTextStyle(
              fontSize: 14,
              underline: true,
              fontWeightIndex: FontSelectionData.fontW600,
              color: AppColors.orangeColor,
            ),
          ),
        ),
      ],
    );
  }
}
