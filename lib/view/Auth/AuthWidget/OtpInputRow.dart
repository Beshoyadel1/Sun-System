// otp_input_row.dart
import 'package:flutter/material.dart';
import '../../../view/Auth/AuthWidget/OtpBox.dart';

class OtpInputRow extends StatelessWidget {
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;

  const OtpInputRow({
    super.key,
    required this.controllers,
    required this.focusNodes,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return OtpBox(
          controller: controllers[index],
          focusNode: focusNodes[index],
          nextFocusNode: index < 3 ? focusNodes[index + 1] : null,
        );
      }),
    );
  }
}
