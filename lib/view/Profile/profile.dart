import 'package:flutter/material.dart';
import '../../../view/Profile/widget/screens/RowNameExampleCar.dart';
import '../../../utiles/assets/CarBrand.dart';
import '../../../view/Profile/widget/screens/DefaultTabControllerBrand.dart';
import '../../../view/Profile/widget/screens/DefaultTabControllerModel.dart';
import '../../../view/Profile/widget/screens/LastButtonProfileScreen.dart';
import '../../../view/Profile/widget/screens/RowCircleText.dart';
import '../../../utiles/assets/languagePath.dart';
import 'widget/screens/chooseModelCarText.dart';
import '../../../view/customWidget/AppTextFeild.dart';
import 'widget/screens/AppBarProfile.dart';
import '../../../view/customWidget/backgroundDesktop.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';

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
    bool isTablet =
        size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
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
                        const SizedBox(height: 40),
                        RowNameExampleCar(),
                        const SizedBox(height: 10),
                        AppTextFeild(),
                        const SizedBox(height: 45),
                        chooseModelCarText(),
                        const SizedBox(height: 10),
                        FractionallySizedBox(
                          alignment: Alignment.topRight,
                          widthFactor: 0.5,
                          child: AppTextFeild(
                            isIcon: true,
                            icon: Icon(
                              Icons.search,
                              color: AppColors.grayColor.withOpacity(0.6),
                            ),
                            hintText: LanguagePath.youCanSearchToSelectYourCarCategory,
                          ),
                        ),
                        const SizedBox(height: 10),
                        DefaultTabController(
                          length: CarBrand.logoCarImage.length,
                          child: Column(
                            children: [
                              DefaultTabControllerBrand(),
                              DefaultTabControllerModel(),
                            ],
                          ),
                        ),
                        LastButtonProfileScreen()
                      ],
                    ),
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
