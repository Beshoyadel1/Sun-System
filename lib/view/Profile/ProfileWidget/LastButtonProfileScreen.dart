import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppButton.dart';

class LastButtonProfileScreen extends StatelessWidget {
  final Color prevColor, nextColor;
  final VoidCallback? onTap; // make nullable

  LastButtonProfileScreen({
    super.key,
    required this.prevColor,
    required this.nextColor,
    this.onTap, // optional
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Expanded(
            child: AppButton(
              onTap: () {
                Navigator.pop(context);
              },
              backgroundcolor: prevColor,
              text: LanguagePath.skipToLater,
              fontcolor: AppColors.whiteColor,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AppButton(
              onTap: onTap,
              backgroundcolor: nextColor,
              text: LanguagePath.next,
              fontcolor: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
