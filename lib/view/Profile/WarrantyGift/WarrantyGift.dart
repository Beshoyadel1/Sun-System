import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../view/Profile/ProfileWidget/AppBarProfile.dart';
import '../../../../view/Profile/WarrantyGift/screens/LastButtonWarrantyGift.dart';
import '../../../../view/Profile/WarrantyGift/screens/ListBenefit.dart';
import '../../../../view/Profile/WarrantyGift/screens/RowFiveYearsGift.dart';
import '../../../../view/Profile/WarrantyGift/screens/RowGift.dart';
import '../../../../view/Profile/WarrantyGift/screens/RowSunWarranty.dart';
import '../../../../view/customWidget/backgroundDesktop.dart';

class WarrantyGift extends StatelessWidget {
  const WarrantyGift({super.key});

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
        imagSrc: ImagePath.person,
        text: LanguagePath.giftWarranty,
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
                              RowGift(),
                              const SizedBox(height: 40,),
                              Image.asset(ImagePath.shield,width: 30,height: 150,),
                              const SizedBox(height: 20,),
                              RowSunWarranty(),
                              const SizedBox(height: 20,),
                              RowFiveYearsGift(),
                              const SizedBox(height: 40,),
                              ListBenefit(),
                              const SizedBox(height: 20,),
                              LastButtonWarrantyGift()
                            ],
                          ),
                        ),
                      ),
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
