import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Controller/Cubit/OtpCubit/OtpCubit.dart';
import '../../../../Controller/Cubit/OtpCubit/OtpState.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppText.dart';

class ColumnTimerShape extends StatelessWidget {
  const ColumnTimerShape({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
        return Column(
          children: [
            AppText(
              text: state.canResend
                  ? ""
                  : "${state.secondsRemaining}s",
              style: Fontspath.appTextStyle(
                fontSize: 16,
                fontWeightIndex: FontSelectionData.fontW400,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child:  AppText(
                  text: LanguagePath.iDidNotReceiveAMessage,
                  style: Fontspath.appTextStyle(
                    fontSize: 16,
                    fontWeightIndex: FontSelectionData.fontW400,
                    color: AppColors.blackColor,
                  ),
                ),
                ),
                const SizedBox(width: 8),
                Flexible(child: InkWell(
                  onTap: state.canResend
                      ? () => context.read<OtpCubit>().startTimer()
                      : null,
                  child: AppText(
                    text: LanguagePath.resend,
                    style: Fontspath.appTextStyle(
                      fontSize: 16,
                      fontWeightIndex: FontSelectionData.fontW400,
                      color: AppColors.orangeColor,
                    ),
                  ),
                ),)
              ],
            ),
          ],
        );
      },
    );
  }
}
