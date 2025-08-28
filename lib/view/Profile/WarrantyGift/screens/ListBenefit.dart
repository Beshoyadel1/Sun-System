import 'package:flutter/cupertino.dart';
import '../../../../view/Profile/ProfileWidget/RowListBenefit.dart';
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
          maxLines: 1,
        ),
        const SizedBox(height: 20),
        RowListBenefit(text: LanguagePath.benefitFromServiceWarranty,),
        const SizedBox(height: 20),
        RowListBenefit(text: LanguagePath.carsWarrantyMarket,),
        const SizedBox(height: 20),
        RowListBenefit(text: LanguagePath.freeMaintenanceDuringWarranty,),
      ],
    );
  }
}
