import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class LoginGuest extends StatelessWidget {
  const LoginGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: AppText(
        text: LanguagePath.loginAsAGuestUser,
        style: Fontspath.appTextStyle(
          fontSize: 12,
          fontWeightIndex: FontSelectionData.fontW400,
          color: AppColors.darkBlackColor,
        ).copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
