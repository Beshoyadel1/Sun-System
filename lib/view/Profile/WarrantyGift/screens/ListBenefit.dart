import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';

class ListBenefit extends StatelessWidget {
  const ListBenefit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppText(
          text: LanguagePath.warrantySunFeatures,
          style: Fontspath.appTextStyle(
            fontSize: 20,
            fontWeightIndex: FontSelectionData.fontW500,
            color: AppColors.blueColor32,
          ),
          maxLines: 1, // optional: keep single line
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            const SizedBox(width: 10,),
            Image.asset(ImagePath.correct),
            const SizedBox(width: 10,),
            AppText(
              text: LanguagePath.benefitFromServiceWarranty,
              style: Fontspath.appTextStyle(
                fontSize: 16,
                fontWeightIndex: FontSelectionData.fontW500,
                color: AppColors.lightBlackColor,
              ),
              maxLines: 1, // optional: keep single line
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            const SizedBox(width: 10,),
            Image.asset(ImagePath.correct),
            const SizedBox(width: 10,),
            AppText(
              text: LanguagePath.carsWarrantyMarket,
              style: Fontspath.appTextStyle(
                fontSize: 16,
                fontWeightIndex: FontSelectionData.fontW500,
                color: AppColors.lightBlackColor,
              ),
              maxLines: 1, // optional: keep single line
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            const SizedBox(width: 10,),
            Image.asset(ImagePath.correct),
            const SizedBox(width: 10,),
            AppText(
              text: LanguagePath.freeMaintenanceDuringWarranty,
              style: Fontspath.appTextStyle(
                fontSize: 16,
                fontWeightIndex: FontSelectionData.fontW500,
                color: AppColors.lightBlackColor,
              ),
              maxLines: 1, // optional: keep single line
            ),
          ],
        ),
      ],
    );
  }
}
