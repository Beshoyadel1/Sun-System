import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../view/customWidget/backgroundDesktop.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../../view/Profile/Map/screens/OrgLocationWidget.dart';
import '../../../../view/Profile/Map/screens/RowCircleTextMap.dart';
import '../../../../view/Profile/PreferredServices/PreferredServices.dart';
import '../../../../view/Profile/ProfileWidget/AppBarProfile.dart';
import '../../../../view/Profile/ProfileWidget/LastButtonProfileScreen.dart';
import '../../../../view/customWidget/NavigateToPageWidget.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet =
        size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
    bool isDesktop = size.width > ValuesOfAllApp.tabWidth;

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
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: isMobile ? 500 : isTablet ? 700 : 900,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              RowCircleTextMap(),
                              const SizedBox(height: 20),
                              OrgLocationWidget(location: "30.0444,31.2357"),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                      LastButtonProfileScreen(
                        nextColor: AppColors.darkBlueColor,
                        prevColor: AppColors.orangeColor,
                        onTap: (){
                          Navigator.of(context).push(
                            NavigateToPageWidget(PreferredServices()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
