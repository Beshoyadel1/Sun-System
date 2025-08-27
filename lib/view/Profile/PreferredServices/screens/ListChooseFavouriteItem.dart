import 'package:flutter/cupertino.dart';
import '../../../../view/Profile/ProfileWidget/RowChooseFavouriteItem.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/Profile/ProfileWidget/ChooseFavouriteItem.dart';

class ListchooseYourFavoriteServices extends StatelessWidget {
  const ListchooseYourFavoriteServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowChooseFavouriteItem(
            text1: LanguagePath.serviceMaintenance,
            text2: LanguagePath.serviceOilChange
        ),
        RowChooseFavouriteItem(
            text1: LanguagePath.serviceHighways,
            text2: LanguagePath.serviceElectricity,
          text3:LanguagePath.serviceSpareParts,
        ),
        RowChooseFavouriteItem(
          text1: LanguagePath.serviceMobile,
          text2: LanguagePath.serviceCarMarket,
          text3:LanguagePath.serviceTransport,
        ),
      ],
    );
  }
}
