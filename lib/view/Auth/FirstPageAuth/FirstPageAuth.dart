import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/utiles/assets/ValuesOfAllApp.dart';
import 'package:sun_system/view/Auth/AuthWidget/backgroundDesktop.dart';
import 'package:sun_system/view/Auth/Login/Login.dart';
import 'package:sun_system/view/customWidget/AppButton.dart';
import 'package:sun_system/view/customWidget/AppText.dart';
import 'package:sun_system/view/Auth/AuthWidget/LineAuth.dart';
import 'package:sun_system/view/customWidget/NavigateToPageWidget.dart';

class FirstPageAuth extends StatefulWidget {
  const FirstPageAuth({super.key});

  @override
  State<FirstPageAuth> createState() => _FirstPageAuthState();
}

class _FirstPageAuthState extends State<FirstPageAuth> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
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
                          text: 'log_in_as_an_individual',
                          style: Fontspath.w400readexPro14(
                            fontWeightIndex: FontSelectionData.fontW400,
                            color: AppColors.lightblackcolor,
                          ),
                        ),
                        const SizedBox(height: 25),
                        /// Auth Buttons
                        Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                isclick: true,
                                backgroundcolor:
                                AppColors.orangecolor.withOpacity(0.6),
                                text: 'register_as_individuals',
                                fontcolor: AppColors.whitecolor,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: AppButton(
                                isclick: true,
                                backgroundcolor:
                                AppColors.darkbluecolor.withOpacity(0.6),
                                text: 'register_as_companies',
                                fontcolor: AppColors.whitecolor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        /// Car image (only for Mobile/Tablet)
                        if (!isDesktop)
                          Image.asset(ImagePath.car, height: 120),
                        if (!isDesktop) const SizedBox(height: 40),
                        /// Divider with text
                        Row(
                          children: [
                            const Expanded(child: LineAuth()),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8),
                              child: AppText(
                                text: 'or_register_via',
                                style: Fontspath.w400readexPro16(
                                  fontWeightIndex: FontSelectionData.fontW400,
                                  color: AppColors.darkbluecolor,
                                ),
                              ),
                            ),
                            const Expanded(child: LineAuth()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        /// Social login buttons
                        Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                isclick: true,
                                backgroundcolor: AppColors.linecolor,
                                text: 'apple_account',
                                fontcolor: AppColors.darkbluecolor,
                                image: ImagePath.apple,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: AppButton(
                                isclick: true,
                                backgroundcolor: AppColors.linecolor,
                                text: 'google',
                                fontcolor: AppColors.darkbluecolor,
                                image: ImagePath.google,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        /// Register link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: 'you_dont_have_an_account',
                              style: Fontspath.w600LamaSans16(
                                fontWeightIndex: FontSelectionData.fontW600,
                                color: AppColors.blackcolor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    NavigateToPageWidget(const Login())
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            /// ===== Left panel only for Desktop =====
            if (isDesktop)
              backgroundDesktop()
            /// ===== Main Content =====
          ],
        ),
      ),
    );
  }
}
