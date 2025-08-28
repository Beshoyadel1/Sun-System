import 'package:flutter/material.dart';
import '../../../view/Auth/OTP/widget/FirstTitleOTP.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';
import '../../../utiles/assets/Fontspath.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../../view/customWidget/AppText.dart';
import '../../customWidget/backgroundDesktop.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Controller/Cubit/OtpCubit/OtpCubit.dart';
import '../../../Controller/Cubit/OtpCubit/OtpState.dart';
import '../../../view/Auth/Login/Login.dart';
import '../../../view/Auth/AuthWidget/OtpInputRow.dart';
import '../../../view/customWidget/NavigateToPageWidget.dart';

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
          Navigator.of(context).push(
            NavigateToPageWidget(const Login()),
          );
        }
      });
    }
  }

  @override
  void dispose() {
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
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 30),
                        Image.asset(ImagePath.logo, height: 80),
                        const SizedBox(height: 40),
                        FirstTitleOTP(),
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
                                    AppText(
                                      text: LanguagePath.iDidNotReceiveAMessage,
                                      style: Fontspath.appTextStyle(
                                        fontSize: 16,
                                        fontWeightIndex: FontSelectionData.fontW400,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    InkWell(
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
            if (isDesktop) const backgroundDesktop(),
          ],
        ),
      ),
    );
  }
}
