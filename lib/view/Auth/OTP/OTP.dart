import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpCubit.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpState.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/l10n/app_localizations.dart';
import 'package:sun_system/view/Auth/AuthWidget/OtpInputRow.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  final List<FocusNode> _focusNodes =
  List.generate(4, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
    context.read<OtpCubit>().startTimer();
    _listenOtpFields();
  }

  void _listenOtpFields() {
    for (var controller in _controllers) {
      controller.addListener(() {
        bool allFilled = _controllers.every((c) => c.text.isNotEmpty);
        if (allFilled) {
          Get.offAllNamed('/login');
        }
      });
    }
  }

  @override
  void dispose() {
    context.read<OtpCubit>().dispose();
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height * 0.03),
            Image.asset(ImagePath.logo, height: height * 0.09),
            SizedBox(height: height * 0.05),
            Text(
              AppLocalizations.of(context)!.confirmPassword,
              style: Fontspath.w500readexPro22(
                color: AppColors.lightblackcolor,
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!
                  .pleaseenterthepasswordsenttoyourphonenumber,
              style: Fontspath.w400readexPro14(
                color: AppColors.lightblackcolor,
              ),
            ),
            SizedBox(height: height * 0.05),

            /// OTP Input Row
            OtpInputRow(
              controllers: _controllers,
              focusNodes: _focusNodes,
            ),

            SizedBox(height: height * 0.05),

            /// Timer & Resend
            BlocBuilder<OtpCubit, OtpState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      state.canResend ? "" : "${state.secondsRemaining}s",
                      style: Fontspath.w400readexPro16(
                        color: AppColors.blackcolor,
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.ididnotreceiveamessage,
                          style: Fontspath.w400readexPro16(
                            color: AppColors.blackcolor,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        InkWell(
                          onTap: state.canResend
                              ? () => context.read<OtpCubit>().startTimer()
                              : null,
                          child: Text(
                            AppLocalizations.of(context)!.resend,
                            style: Fontspath.w400readexPro16(
                              color: AppColors.orangecolor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
