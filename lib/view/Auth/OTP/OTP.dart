import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpCubit.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpState.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/utiles/assets/ValuesOfAllApp.dart';
import 'package:sun_system/view/Auth/Login/Login.dart';
import 'package:sun_system/view/customWidget/AppText.dart';
import 'package:sun_system/view/Auth/AuthWidget/OtpInputRow.dart';
import 'package:sun_system/view/Auth/AuthWidget/backgroundDesktop.dart';
import 'package:sun_system/view/customWidget/NavigateToPageWidget.dart';

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
    // شغّل التايمر مرة واحدة لما الصفحة تتفتح
    context.read<OtpCubit>().startTimer();
    _listenOtpFields();
  }

  void _listenOtpFields() {
    for (var controller in _controllers) {
      controller.addListener(() {
        bool allFilled = _controllers.every((c) => c.text.isNotEmpty);
        if (allFilled) {
          Navigator.of(context).push(
            NavigateToPageWidget(const Login()),
          );
        }
      });
    }
  }

  @override
  void dispose() {
    // ❌ متستدعيش context.read<OtpCubit>() هنا
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
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet =
        size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
    bool isDesktop = size.width > ValuesOfAllApp.tabWidth;

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: isMobile ? 500 : isTablet ? 700 : 900,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 30),
                        Image.asset(ImagePath.logo, height: 80),
                        const SizedBox(height: 40),
                        AppText(
                          text: 'confirmPassword',
                          style: Fontspath.w500readexPro22(
                            fontWeightIndex: FontSelectionData.fontW500,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 15),
                        AppText(
                          text: 'pleaseenterthepasswordsenttoyourphonenumber',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 40),

                        OtpInputRow(
                          controllers: _controllers,
                          focusNodes: _focusNodes,
                        ),
                        const SizedBox(height: 40),

                        BlocBuilder<OtpCubit, OtpState>(
                          builder: (context, state) {
                            return Column(
                              children: [
                                AppText(
                                  text: state.canResend
                                      ? ""
                                      : "${state.secondsRemaining}s",
                                  style: Fontspath.w400readexPro16(
                                    fontWeightIndex: FontSelectionData.fontW400,
                                    color: AppColors.blackcolor,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppText(
                                      text: 'ididnotreceiveamessage',
                                      style: Fontspath.w400readexPro16(
                                        fontWeightIndex: FontSelectionData.fontW400,
                                        color: AppColors.blackcolor,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    InkWell(
                                      onTap: state.canResend
                                          ? () => context.read<OtpCubit>().startTimer()
                                          : null,
                                      child: AppText(
                                        text: 'resend',
                                        style: Fontspath.w400readexPro16(
                                          fontWeightIndex: FontSelectionData.fontW400,
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
                ),
              ),
            ),
            if (isDesktop) backgroundDesktop(),
          ],
        ),
      ),
    );
  }
}
