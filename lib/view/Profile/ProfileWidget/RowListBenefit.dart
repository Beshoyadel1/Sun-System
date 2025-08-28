import 'package:flutter/cupertino.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/utiles/assets/languagePath.dart';
import 'package:sun_system/view/customWidget/AppText.dart';

class RowListBenefit extends StatelessWidget {
  final String text;
  const RowListBenefit({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, // keep aligned
      children: [
        Image.asset(
          ImagePath.correct,
          width: 20,
          height: 20,
        ),
        const SizedBox(width: 8),
        Expanded(   // makes the text flexible
          child: AppText(
            text: text,
            style: Fontspath.appTextStyle(
              fontSize: 13,
              fontWeightIndex: FontSelectionData.fontW500,
              color: AppColors.lightBlackColor,
            ),
            maxLines: null,
          ),
        ),
      ],
    );
  }
}
