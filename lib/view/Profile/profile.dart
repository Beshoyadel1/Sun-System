import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/FontSelectionData.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/languagePath.dart';
import 'package:sun_system/view/Profile/widget/chooseModelCarText.dart';
import 'package:sun_system/view/customWidget/AppText.dart';
import '../../../view/customWidget/AppTextFeild.dart';
import '../../../view/Profile/widget/AppBarProfile.dart';
import '../../../view/Profile/widget/RowCircleText.dart';
import '../../../view/Profile/widget/RowNameExampleCar.dart';
import '../../../view/customWidget/backgroundDesktop.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';
import '../../Controller/Cubit/language.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
    bool isDesktop = size.width > ValuesOfAllApp.tabWidth;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBarProfile(),
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
                        RowCircleText(),
                        const SizedBox(height: 40,),
                        RowNameExampleCar(),
                        const SizedBox(height: 10,),
                        AppTextFeild(),
                        const SizedBox(height: 45,),
                        chooseModelCarText(),
                        const SizedBox(height: 10,),
                        FractionallySizedBox(
                          alignment: AlignmentGeometry.topRight,
                          widthFactor: 0.5, // takes 50% of available width
                          child: AppTextFeild(
                            isIcon: true,
                            icon: Icon(Icons.search,
                              color: AppColors.grayColor.withOpacity(0.6),
                            ),
                            hintText: LanguagePath.youCanSearchToSelectYourCarCategory,
                          ),
                        ),
                      ],
                    ),
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
