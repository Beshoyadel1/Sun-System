import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../utiles/assets/ImagePath.dart';

class RowCirclePreferredServices extends StatelessWidget {
  const RowCirclePreferredServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(ImagePath.circle44, width: 50),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: LanguagePath.favoriteServices,
                style: Fontspath.appTextStyle(
                  fontSize: 20,
                  fontWeightIndex: FontSelectionData.fontW500,
                  color: AppColors.lightBlackColor,
                ),
                maxLines: 1, // optional: keep single line
              ),
              const SizedBox(height: 5),
              AppText(
                text: LanguagePath.youCanSelectOurFavoriteServices,
                style: Fontspath.appTextStyle(
                  fontSize: 16,
                  fontWeightIndex: FontSelectionData.fontW400,
                  color: AppColors.lightBlackColor,
                ),
                maxLines: 2,
              )
            ],
          ),
        )
      ],
    );
  }
}
