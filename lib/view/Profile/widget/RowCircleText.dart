import 'package:flutter/cupertino.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';
import '../../../utiles/assets/Fontspath.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../../view/customWidget/AppText.dart';
import '../../../utiles/assets/ImagePath.dart';

class RowCircleText extends StatelessWidget {
  const RowCircleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(ImagePath.circle24),
        const SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: LanguagePath.yourVehicleInformation,
              style: Fontspath.appTextStyle(
                fontSize: 20,
                fontWeightIndex: FontSelectionData.fontW500,
                color: AppColors.lightBlackColor,
              ),
            ),
            const SizedBox(height: 5,),
            AppText(
              text: LanguagePath.toViewServicesAndCentersForYourVehicleModel,
              style: Fontspath.appTextStyle(
                fontSize: 16,
                fontWeightIndex: FontSelectionData.fontW400,
                color: AppColors.lightBlackColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
