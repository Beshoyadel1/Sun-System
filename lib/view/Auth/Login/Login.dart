import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/utiles/assets/ValuesOfAllApp.dart';
import 'package:sun_system/view/Auth/Signup/Signup.dart';
import 'package:sun_system/view/customWidget/AppButton.dart';
import 'package:sun_system/view/customWidget/AppText.dart';
import 'package:sun_system/view/customWidget/NavigateToPageWidget.dart';
import 'package:sun_system/view/customWidget/TextFeildAuth.dart';
import 'package:sun_system/view/Auth/AuthWidget/backgroundDesktop.dart';

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

    /// Define breakpoints
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet =
        size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
    bool isDesktop = size.width > ValuesOfAllApp.tabWidth;

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Row(
          children: [
            /// Main login form
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
                        /// Logo
                        Image.asset(ImagePath.logo, height: 80),
                        const SizedBox(height: 30),

                        /// Title
                        AppText(
                          text: 'login',
                          style: Fontspath.w500readexPro22(
                            fontWeightIndex: FontSelectionData.fontW500,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),

                        /// Subtitle
                        AppText(
                          text: 'please_enter_your_phone',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 25),

                        /// Username field
                        AppText(
                          text: 'username',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Material(
                          child: AppTextFeild(controller: usernameController),
                        ),
                        const SizedBox(height: 25),

                        /// Password field
                        AppText(
                          text: 'password',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.darkblackcolor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Material(
                          child: AppTextFeild(
                            controller: passwordController,
                            isPassword: true,
                          ),
                        ),
                        const SizedBox(height: 20),

                        /// Forgot password row
                        Row(
                          children: [
                            AppText(
                              text: 'forget_password',
                              style: Fontspath.w600LamaSans16(
                                fontWeightIndex: FontSelectionData.fontW600,
                                color: AppColors.blackcolor,
                              ),
                            ),
                            const SizedBox(width: 12),
                            AppText(
                              text: 'redeem_here',
                              style: Fontspath.w600LamaSans14underline(
                                fontWeightIndex: FontSelectionData.fontW600,
                                color: AppColors.orangecolor.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),

                        /// Login button
                        AppButton(
                          isclick: true,
                          backgroundcolor: AppColors.orangecolor.withOpacity(0.8),
                          text: 'login',
                          fontcolor: AppColors.whitecolor,
                          onTap: () {
                            // Handle login
                          },
                        ),
                        const SizedBox(height: 12),

                        /// Guest login
                        InkWell(
                          onTap: () {},
                          child: AppText(
                            text: 'login_as_a_guest_user',
                            style: Fontspath.w400readexPro12(
                              fontWeightIndex: FontSelectionData.fontW400,
                              color: AppColors.darkblackcolor,
                            ).copyWith(decoration: TextDecoration.underline),
                          ),
                        ),
                        const SizedBox(height: 25),

                        /// Face ID
                        InkWell(
                          onTap: () {},
                          child: Image.asset(ImagePath.faceid, height: 50),
                        ),
                        const SizedBox(height: 30),

                        /// Register link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: 'dont_have_account',
                              style: Fontspath.w600LamaSans16(
                                fontWeightIndex: FontSelectionData.fontW600,
                                color: AppColors.blackcolor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    NavigateToPageWidget(const Signup())
                                );
                              },
                              child: AppText(
                                text: 'register_here',
                                style: Fontspath.w600LamaSans14underline(
                                  fontWeightIndex: FontSelectionData.fontW600,
                                  color: AppColors.orangecolor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            /// Desktop Left Panel
            if (isDesktop) backgroundDesktop(),
          ],
        ),
      ),
    );
  }
}
