import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../view/customWidget/AppTextFeild.dart';

class MapTextFeild extends StatelessWidget {
  const MapTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300, // adjust height as needed
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePath.map),
          fit: BoxFit.cover, // cover entire container
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: LanguagePath.searchYourAddress,
              style: Fontspath.appTextStyle(
                fontWeightIndex: FontSelectionData.fontW400,
                color: AppColors.darkBlackColor,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: AppTextFeild(),
            ),
          ],
        ),
      ),
    );
  }
}
