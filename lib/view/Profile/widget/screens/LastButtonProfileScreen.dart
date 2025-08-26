import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../view/customWidget/AppButton.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';

class LastButtonProfileScreen extends StatelessWidget {
  const LastButtonProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 12,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: AppButton(
                  backgroundcolor: AppColors.darkBlueColor,
                  text: LanguagePath.skipToLater,
                  fontcolor: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                width: 200,
                child: AppButton(
                  backgroundcolor: AppColors.orangeColor,
                  text: LanguagePath.next,
                  fontcolor: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
