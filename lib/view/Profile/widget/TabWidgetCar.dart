
import 'package:flutter/cupertino.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';
import '../../../utiles/assets/Fontspath.dart';

class TabWidgetCar extends StatelessWidget {
  final bool isSelected;
  final String name;
  final String imageSrc;

  TabWidgetCar({required this.isSelected, required this.name,required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Image.asset(imageSrc),
          Text(
            name,
            style: Fontspath.appTextStyle(
                fontSize: 12,
                fontWeightIndex: FontSelectionData.fontW400,
                color: AppColors.lightBlackColor),
          ),
        ],
      )
    );
  }
}
