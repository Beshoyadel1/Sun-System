import 'package:flutter/material.dart';
import '../../../view/Auth/FirstPageAuth/widget/FirstRowButtonFirstPage.dart';
import '../../../view/Auth/FirstPageAuth/widget/LastRowTitleFirstPage.dart';
import '../../../view/Auth/FirstPageAuth/widget/RowLineTextFirstPage.dart';
import '../../../view/Auth/FirstPageAuth/widget/SecondRowButtonFirstPage.dart';
import '../../../view/Auth/FirstPageAuth/widget/FirstTitleFirstPage.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';
import '../../customWidget/backgroundDesktop.dart';

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
                        FirstTitleFirstPage(),
                        const SizedBox(height: 25),
                        FirstRowButtonFirstPage(),
                        const SizedBox(height: 40),
                        if (!isDesktop)
                          Image.asset(ImagePath.car, height: 120),
                        if (!isDesktop) const SizedBox(height: 40),
                        RowLineTextFirstPage(),
                        const SizedBox(height: 20),
                        SecondRowButtonFirstPage(),
                        const SizedBox(height: 30),
                        LastRowTitleFirstPage(),
                      ],
                    ),

                ),
              ),
            ),
            if (isDesktop)
              const backgroundDesktop()
          ],
        ),
      ),
    );
  }
}
