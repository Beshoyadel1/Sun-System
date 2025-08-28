import 'package:flutter/material.dart';
import '../../Profile/ChooseCar/ChooseCar.dart';
import '../../../view/customWidget/NavigateToPageWidget.dart';
import '../../../view/Auth/Login/widget/FaceIdLogin.dart';
import '../../../view/Auth/Login/widget/FirstTitleLogin.dart';
import '../../../view/Auth/Login/widget/LastRowTitleLogin.dart';
import '../../../view/Auth/Login/widget/LoginGuest.dart';
import '../../../view/Auth/Login/widget/RowForgetPassword.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../../view/Auth/AuthWidget/AppLabeledTextField.dart';
import '../../../view/customWidget/AppButton.dart';
import '../../customWidget/backgroundDesktop.dart';

class Login extends StatefulWidget {
  static const String RouteName = 'Login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                        Image.asset(ImagePath.logo, height: 80),
                        const SizedBox(height: 30),
                        FirstTitleLogin(),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                            label: LanguagePath.username,
                            controller: usernameController,
                        ),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                          label: LanguagePath.password,
                          controller: passwordController,
                          isPassword: true,
                        ),
                        const SizedBox(height: 20),
                        RowForgetPassword(),
                        const SizedBox(height: 25),
                        AppButton(
                          backgroundcolor: AppColors.orangeColor.withOpacity(0.8),
                          text: LanguagePath.login,
                          fontcolor: AppColors.whiteColor,
                          onTap: () {
                            Navigator.of(context).push(
                              NavigateToPageWidget(ChooseCar()),
                            );
                          },
                        ),
                        const SizedBox(height: 12),
                        LoginGuest(),
                        const SizedBox(height: 25),
                        FaceIdLogin(),
                        const SizedBox(height: 30),
                        LastRowTitleLogin(),
                        const SizedBox(height: 30),
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
