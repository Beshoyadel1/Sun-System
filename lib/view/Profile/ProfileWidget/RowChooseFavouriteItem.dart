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
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        ChooseFavouriteItem(textItem: text1),
        ChooseFavouriteItem(textItem: text2),
        if (text3 != null) ChooseFavouriteItem(textItem: text3!),
      ],
    );
  }
}
