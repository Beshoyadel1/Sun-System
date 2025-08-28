import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../view/customWidget/AppText.dart';

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
