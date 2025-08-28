import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../utiles/assets/ImagePath.dart';
import '../../../../Controller/Cubit/ChooseFavouriteItemCubit/ChooseFavouriteItem.dart';
import '../../../../view/Profile/PreferredServices/screens/ListChooseFavouriteItem.dart';
import '../../../../view/Profile/PreferredServices/screens/RowCirclePreferredServices.dart';
import '../../../../view/Profile/PreferredServices/screens/TextchooseYourFavoriteServices.dart';
import '../../../../view/Profile/ProfileWidget/AppBarProfile.dart';
import '../../../../view/Profile/ProfileWidget/LastButtonProfileScreen.dart';
import '../../../../view/Profile/WarrantyGift/WarrantyGift.dart';
import '../../../../view/customWidget/NavigateToPageWidget.dart';
import '../../../../view/customWidget/backgroundDesktop.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';

class PreferredServices extends StatelessWidget {
  const PreferredServices({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTablet =
        size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.tabWidth;
    bool isDesktop = size.width > ValuesOfAllApp.tabWidth;

    return BlocProvider(
      create: (_) => FavouriteCubit(),
      child: Scaffold(
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
                                RowCirclePreferredServices(),
                                const SizedBox(height: 30),
                                TextchooseYourFavoriteServices(),
                                const SizedBox(height: 30),
                                ListchooseYourFavoriteServices()
                              ],
                            ),
                          ),
                        ),
                        BlocBuilder<FavouriteCubit, Set<String>>(
                          builder: (context, selectedItems) {
                            final canGoNext = context.read<FavouriteCubit>().canGoNext;
                            return LastButtonProfileScreen(
                              nextColor: canGoNext ? AppColors.darkBlueColor : AppColors.grayColor,
                              prevColor: AppColors.orangeColor,
                              onTap: canGoNext
                                  ? () {
                                Navigator.of(context).push(
                                  NavigateToPageWidget(WarrantyGift()),
                                );
                              }
                                  : null,
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
      ),
    );
  }
}
