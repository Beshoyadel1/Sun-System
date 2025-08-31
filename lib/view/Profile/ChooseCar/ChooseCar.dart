import 'package:flutter/material.dart';
import '../../../utiles/assets/CarBrand.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../view/Profile/ChooseCar/screens/RowCircleText.dart';
import '../../../view/Profile/Map/MapScreen.dart';
import '../../../view/Profile/ProfileWidget/AppBarProfile.dart';
import '../../../view/Profile/ChooseCar/screens/DefaultTabControllerBrand.dart';
import '../../../view/Profile/ChooseCar/screens/DefaultTabControllerModel.dart';
import '../../../view/Profile/ChooseCar/screens/RowNameExampleCar.dart';
import '../../../view/Profile/ChooseCar/screens/chooseModelCarText.dart';
import '../../../view/Profile/ProfileWidget/LastButtonProfileScreen.dart';
import '../../../view/customWidget/NavigateToPageWidget.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/customWidget/AppTextFeild.dart';
import '../../../../view/customWidget/backgroundDesktop.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';

class ChooseCar extends StatefulWidget {
  const ChooseCar({super.key});

  @override
  State<ChooseCar> createState() => _ChooseCarState();
}

class _ChooseCarState extends State<ChooseCar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBarProfile(
        imagSrc: ImagePath.notify,
        text: LanguagePath.profile,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              RowCircleText(),
                              const SizedBox(height: 40),
                              RowNameExampleCar(),
                              const SizedBox(height: 10),
                              AppTextFeild(
                                widthText: 500,
                              ),
                              const SizedBox(height: 45),
                              chooseModelCarText(),
                              const SizedBox(height: 10),
                              AppTextFeild(
                                widthText: 250,
                                isIcon: true,
                                icon: Icon(
                                  Icons.search,
                                  color: AppColors.grayColor.withOpacity(0.6),
                                ),
                                hintText: LanguagePath.youCanSearchToSelectYourCarCategory,
                              ),
                              const SizedBox(height: 20),
                              DefaultTabController(
                                length: CarBrand.logoCarImage.length,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DefaultTabControllerBrand(),
                                    const SizedBox(height: 10),
                                    DefaultTabControllerModel(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      LastButtonProfileScreen(
                        widthText: 300,
                        nextColor: AppColors.darkBlueColor,
                        prevColor: AppColors.orangeColor,
                        onTap: (){
                          Navigator.of(context).push(
                            NavigateToPageWidget(MapScreen()),
                          );
                        },
                      ),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
