import 'package:flutter/cupertino.dart';
import '../../../../view/Profile/ProfileWidget/ChooseFavouriteItem.dart';

class RowChooseFavouriteItem extends StatelessWidget {
  final String text1, text2;
  final String? text3; // only this can be optional

  const RowChooseFavouriteItem({
    super.key,
    required this.text1,
    required this.text2,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return text3 == null
        ? Row(
      children: [
        ChooseFavouriteItem(textItem: text1),
        ChooseFavouriteItem(textItem: text2),
      ],
    )
        : Row(
      children: [
        ChooseFavouriteItem(textItem: text1),
        ChooseFavouriteItem(textItem: text2),
        ChooseFavouriteItem(textItem: text3!), // use ! here safely
      ],
    );
  }
}
