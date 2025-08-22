import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';

class LineAuth extends StatelessWidget {
  const LineAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.linecolor.withOpacity(0.6),
      thickness: 1,
      endIndent: 10,
    );
  }
}
