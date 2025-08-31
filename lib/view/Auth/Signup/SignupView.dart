import 'package:flutter/material.dart';
import '../../../view/Auth/Signup/widget/RowButtoncreateAccount.dart';
import '../../../view/Auth/Signup/widget/FirstTitleSignup.dart';
import '../../../view/Auth/Signup/widget/LastRowSignup.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../customWidget/backgroundDesktop.dart';
import '../../../view/customWidget/AppButton.dart';
import '../../../view/customWidget/NavigateToPageWidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Controller/Cubit/SignupCubit/SignupCubit.dart';
import '../../../view/Auth/AuthWidget/AppLabeledTextField.dart';
import '../../../view/Auth/OTP/OTP.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  void _validate(BuildContext context) {
    context.read<SignupCubit>().validateForm(
      username: _usernameController.text.trim(),
      phone: _phoneController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      rePassword: _rePasswordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                        FirstTitleSignup(),
                        const SizedBox(height: 30),
                        AppLabeledTextField(
                            label: LanguagePath.username,
                            controller: _usernameController,
                          onChanged: (_) => _validate(context),
                        ),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                          label: LanguagePath.phoneNumber,
                          controller: _phoneController,
                          onChanged: (_) => _validate(context),
                          isNumber: true,
                        ),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                          label: LanguagePath.email,
                          controller: _emailController,
                          onChanged: (_) => _validate(context),
                        ),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                          label: LanguagePath.password,
                          controller: _passwordController,
                          onChanged: (_) => _validate(context),
                          isPassword: true,
                        ),
                        const SizedBox(height: 25),
                        AppLabeledTextField(
                          label: LanguagePath.rePassword,
                          controller: _rePasswordController,
                          onChanged: (_) => _validate(context),
                          isPassword: true,
                        ),
                        const SizedBox(height: 30),
                        RowButtoncreateAccount(),
                        const SizedBox(height: 30),
                        LastRowSignup(),
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
