import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/utiles/assets/ValuesOfAllApp.dart';
import 'package:sun_system/view/Auth/OTP/OTP.dart';
import 'package:sun_system/view/customWidget/AppButton.dart';
import 'package:sun_system/view/customWidget/AppText.dart';
import 'package:sun_system/view/customWidget/NavigateToPageWidget.dart';
import 'package:sun_system/view/customWidget/TextFeildAuth.dart';
import 'package:sun_system/view/Auth/AuthWidget/backgroundDesktop.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Controllers
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  bool isClick = false;

  void _validateForm() {
    final username = _usernameController.text.trim();
    final phone = _phoneController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final rePassword = _rePasswordController.text.trim();

    setState(() {
      if (username.isNotEmpty &&
          phone.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          rePassword.isNotEmpty &&
          password == rePassword) {
        isClick = true;
      } else {
        isClick = false;
      }
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    /// Breakpoints
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

                        /// Logo
                        Image.asset(ImagePath.logo, height: 80),
                        const SizedBox(height: 40),

                        /// Title
                        AppText(
                          text: 'registeranewaccount',
                          style: Fontspath.w500readexPro22(
                            fontWeightIndex: FontSelectionData.fontW500,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 15),

                        /// Subtitle
                        AppText(
                          text: 'Pleaseenteryouraccountinformationandpassword',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 30),

                        /// Username
                        AppText(
                          text: 'username',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppTextFeild(
                          controller: _usernameController,
                          onChanged: (_) => _validateForm(),
                        ),

                        const SizedBox(height: 25),

                        /// Phone
                        AppText(
                          text: 'phone_number',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppTextFeild(
                          controller: _phoneController,
                          isNumber: true,
                          onChanged: (_) => _validateForm(),
                        ),

                        const SizedBox(height: 25),

                        /// Email
                        AppText(
                          text: 'email',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppTextFeild(
                          controller: _emailController,
                          onChanged: (_) => _validateForm(),
                        ),

                        const SizedBox(height: 25),

                        /// Password
                        AppText(
                          text: 'password',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppTextFeild(
                          controller: _passwordController,
                          isPassword: true,
                          onChanged: (_) => _validateForm(),
                        ),

                        const SizedBox(height: 25),

                        /// Re-Password
                        AppText(
                          text: 're_password',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppTextFeild(
                          controller: _rePasswordController,
                          isPassword: true,
                          onChanged: (_) => _validateForm(),
                        ),

                        const SizedBox(height: 30),

                        /// Create Account Button
                        AppButton(
                          isclick: isClick,
                          backgroundcolor: isClick
                              ? AppColors.orangecolor
                              : AppColors.graycolor,
                          text: 'create_account',
                          fontcolor: AppColors.whitecolor,
                          onTap: () {
                            if (isClick) {
                              Navigator.of(context).push(
                                  NavigateToPageWidget(const Otp())
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: AppText(
                                    text:
                                    "Please fill all fields and make sure passwords match",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: AppColors.blackcolor,
                                ),
                              );
                            }
                          },
                        ),

                        const SizedBox(height: 30),

                        /// Company Account Redirect
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: 'createanaccountinthenameofacompany',
                              style: Fontspath.w600LamaSans16(
                                color: AppColors.blackcolor,
                                fontWeightIndex: FontSelectionData.fontW600,
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: AppText(
                                text: 'register_here',
                                style: Fontspath.w600LamaSans14underline(
                                  color: AppColors.orangecolor,
                                  fontWeightIndex: FontSelectionData.fontW600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            /// Left Panel only for Desktop
            if (isDesktop) backgroundDesktop(),
          ],
        ),
      ),
    );
  }
}
