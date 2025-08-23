import 'package:flutter/cupertino.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ImagePath.dart';

class backgroundDesktop extends StatelessWidget {
  const backgroundDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Container(
        color: AppColors.darkbluecolor.withOpacity(0.05),
        child: Center(
          child: Image.asset(
            ImagePath.car,
            height: 220,
          ),
        ),
      ),
    );
  }
}
