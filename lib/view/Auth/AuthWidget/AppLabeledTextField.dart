import 'package:flutter/material.dart';
import '../../../view/customWidget/AppText.dart';
import '../../../view/customWidget/TextFeildAuth.dart';
import '../../../utiles/assets/Fontspath.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';


class AppLabeledTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final bool isNumber;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final double spacing;

  const AppLabeledTextField({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.isNumber = false,
    this.onChanged,
    this.hintText,
    this.spacing = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: label,
          style: Fontspath.appTextStyle(
            fontSize: 14,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.darkBlackColor,
          ),
        ),
        SizedBox(height: spacing),
        AppTextFeild(
          controller: controller,
          isPassword: isPassword,
          isNumber: isNumber,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
