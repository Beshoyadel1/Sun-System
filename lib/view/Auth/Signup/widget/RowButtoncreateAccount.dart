import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system/Controller/Cubit/SignupCubit/SignupCubit.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/languagePath.dart';
import 'package:sun_system/view/Auth/OTP/OTP.dart';
import 'package:sun_system/view/customWidget/AppButton.dart';
import 'package:sun_system/view/customWidget/NavigateToPageWidget.dart';

class RowButtoncreateAccount extends StatelessWidget{
  const RowButtoncreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<SignupCubit, bool>(
          builder: (context, isClick) {
            return AppButton(
              widthText: 300,
              backgroundcolor: isClick
                  ? AppColors.orangeColor
                  : AppColors.grayColor,
              text: LanguagePath.createAccount,
              fontcolor: AppColors.whiteColor,
              onTap: () {
                if (isClick) {
                  Navigator.of(context).push(
                    NavigateToPageWidget(const Otp()),
                  );
                }
              },
            );
          },
        ),
      ],
    );
  }
}
