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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(fit: FlexFit.loose, child: ChooseFavouriteItem(textItem: text1)),
        Flexible(fit: FlexFit.loose, child: ChooseFavouriteItem(textItem: text2)),
        if (text3 != null)
          Flexible(fit: FlexFit.loose, child: ChooseFavouriteItem(textItem: text3!)),
      ],
    );
  }
}
