import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../view/Auth/Login/Login.dart';
import '../../../../view/customWidget/NavigateToPageWidget.dart';

class LastRowTitleFirstPage extends StatelessWidget {
  const LastRowTitleFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: LanguagePath.youDontHaveAnAccount,
          style: Fontspath.appTextStyle(
            fontSize: 16,
            fontWeightIndex: FontSelectionData.fontW600,
            color: AppColors.blackColor,
          ),
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
                NavigateToPageWidget(const Login())
            );
          },
          child: AppText(
            text: LanguagePath.registerHere,
            style: Fontspath.appTextStyle(
              fontSize: 16,
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
