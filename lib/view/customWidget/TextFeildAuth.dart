import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utiles/assets/AppColors.dart';

class AppTextFeild extends StatefulWidget {
  final bool isPassword;
  final bool isNumber;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const AppTextFeild({
    super.key,
    this.isPassword = false,
    this.isNumber = false,
    this.labelText,
    this.hintText,
    this.controller,
    this.onChanged,
    this.validator,
  });

  @override
  State<AppTextFeild> createState() => _AppLabeledTextFieldState();
}

class _AppLabeledTextFieldState extends State<AppTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              widget.labelText!,
              style: TextStyle(
                color: AppColors.darkBlackColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        TextFormField(
          controller: widget.controller,
          keyboardType:
          widget.isNumber ? TextInputType.number : TextInputType.text,
          obscureText: widget.isPassword,
          inputFormatters: widget.isNumber
              ? [FilteringTextInputFormatter.digitsOnly]
              : null,
          validator: widget.validator,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: AppColors.grayColor.withOpacity(0.6),
            ),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: AppColors.grayColor.withOpacity(0.5),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: AppColors.orangeColor.withOpacity(0.7),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
