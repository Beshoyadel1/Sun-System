import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppButton.dart';

class FirstRowButtonFirstPage extends StatelessWidget {
  const FirstRowButtonFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: AppButton(
              widthText: 200,
              backgroundcolor: AppColors.orangeColor.withOpacity(0.6),
              text: LanguagePath.registerAsIndividuals,
              fontcolor: AppColors.whiteColor,
            ),
        ),
        const SizedBox(width: 12),
        Flexible(
            child: AppButton(
              widthText: 200,
              backgroundcolor: AppColors.darkBlueColor.withOpacity(0.6),
              text: LanguagePath.registerAsCompanies,
              fontcolor: AppColors.whiteColor,
            ),
        ),
      ],
    );
  }
}
