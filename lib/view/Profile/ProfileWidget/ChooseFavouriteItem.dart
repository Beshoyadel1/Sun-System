import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../Controller/Cubit/ChooseFavouriteItemCubit/ChooseFavouriteItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseFavouriteItem extends StatelessWidget {
  final String textItem;

  const ChooseFavouriteItem({super.key, required this.textItem});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, Set<String>>(
      builder: (context, selectedItems) {
        final isSelected = selectedItems.contains(textItem);

        return GestureDetector(
          onTap: () {
            context.read<FavouriteCubit>().toggleItem(textItem);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: AppText(
              text: textItem,
              style: Fontspath.appTextStyle(
                fontSize: 14,
                fontWeightIndex: FontSelectionData.fontW400,
                color: isSelected ? Colors.white : AppColors.lightGrayColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
