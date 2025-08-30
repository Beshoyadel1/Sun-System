import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';



class RowNameExampleCar extends StatelessWidget {
  const RowNameExampleCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AppText(
          text: LanguagePath.youCarName,
          style: Fontspath.appTextStyle(
            fontSize: 16,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.darkBlackColor,
          ),
          maxLines: 1,
        ),
        ),

        const SizedBox(width: 5,),
        Flexible(
          child: AppText(
          text: LanguagePath.exampleCar,
          style: Fontspath.appTextStyle(
            fontSize: 13,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.blueColor,
          ),
            maxLines: 1,
          ),
        )
      ],
    );
  }
}
