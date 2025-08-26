import 'package:flutter/cupertino.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/Profile/ProfileWidget/ChooseFavouriteItem.dart';

class ListchooseYourFavoriteServices extends StatelessWidget {
  const ListchooseYourFavoriteServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ChooseFavouriteItem(textItem: LanguagePath.serviceMaintenance),
            ChooseFavouriteItem(textItem: LanguagePath.serviceOilChange),
          ],
        ),
        Row(
          children: [
            ChooseFavouriteItem(textItem: LanguagePath.serviceHighways),
            ChooseFavouriteItem(textItem: LanguagePath.serviceElectricity),
            ChooseFavouriteItem(textItem: LanguagePath.serviceSpareParts),
          ],
        ),
        Row(
          children: [
            ChooseFavouriteItem(textItem: LanguagePath.serviceMobile),
            ChooseFavouriteItem(textItem: LanguagePath.serviceCarMarket),
            ChooseFavouriteItem(textItem: LanguagePath.serviceTransport),
          ],
        ),
      ],
    );
  }
}
