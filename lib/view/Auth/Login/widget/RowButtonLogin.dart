import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/Profile/ChooseCar/ChooseCar.dart';
import '../../../../view/customWidget/AppButton.dart';
import '../../../../view/customWidget/NavigateToPageWidget.dart';

class RowButtonLogin extends StatelessWidget {
  const RowButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: AppButton(
            widthText: 300,
            backgroundcolor: AppColors.orangeColor.withOpacity(0.8),
            text: LanguagePath.login,
            fontcolor: AppColors.whiteColor,
            onTap: () {
              Navigator.of(context).push(
                NavigateToPageWidget(ChooseCar()),
              );
            },
          ),
        ),
      ],
    );
  }
}
