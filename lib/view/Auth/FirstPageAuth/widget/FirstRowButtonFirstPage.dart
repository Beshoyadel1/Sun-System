import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppButton.dart';

class FirstRowButtonFirstPage extends StatelessWidget {
  const FirstRowButtonFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            backgroundcolor:
            AppColors.orangeColor.withOpacity(0.6),
            text: LanguagePath.registerAsIndividuals,
            fontcolor: AppColors.whiteColor,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AppButton(
            backgroundcolor:
            AppColors.darkBlueColor.withOpacity(0.6),
            text: LanguagePath.registerAsCompanies,
            fontcolor: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
