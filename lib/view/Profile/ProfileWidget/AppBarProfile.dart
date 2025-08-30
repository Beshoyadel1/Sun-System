import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  String text,imagSrc;
   AppBarProfile({super.key,required this.text,required this.imagSrc});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(color: AppColors.backgroundColor),
      leading: Image.asset(imagSrc),
      actions: [
        const SizedBox(width: 10,),
        Flexible(child: AppText(
          text: text,
          style: Fontspath.appTextStyle(
            fontSize: 18,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.blackColor,
          ),
        ),),
        const SizedBox(width: 5,),
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blackColor,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
