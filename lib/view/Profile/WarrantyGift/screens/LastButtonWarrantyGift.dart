import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppButton.dart';

class LastButtonWarrantyGift extends StatelessWidget {
  const LastButtonWarrantyGift({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      backgroundcolor: AppColors.orangeColor,
      text: LanguagePath.showServicesNow,
      fontcolor: AppColors.whiteColor,
    );
  }
}
