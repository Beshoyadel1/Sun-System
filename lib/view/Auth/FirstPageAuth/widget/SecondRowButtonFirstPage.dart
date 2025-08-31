import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../view/customWidget/AppButton.dart';

class SecondRowButtonFirstPage extends StatelessWidget {
  const SecondRowButtonFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: AppButton(
            widthText: 200,
            backgroundcolor: AppColors.lineColor,
            text: LanguagePath.appleAccount,
            fontcolor: AppColors.darkBlueColor,
            image: ImagePath.apple,
          ),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: AppButton(
            widthText: 200,
            backgroundcolor: AppColors.lineColor,
            text: LanguagePath.google,
            fontcolor: AppColors.darkBlueColor,
            image: ImagePath.google,
          ),
        ),
      ],
    );
  }
}
