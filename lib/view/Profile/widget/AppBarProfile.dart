import 'package:flutter/material.dart';
import '../../../utiles/assets/AppColors.dart';
import '../../../utiles/assets/FontSelectionData.dart';
import '../../../utiles/assets/Fontspath.dart';
import '../../../utiles/assets/languagePath.dart';
import '../../../view/customWidget/AppText.dart';
import '../../../utiles/assets/ImagePath.dart';
import '../../../utiles/assets/ValuesOfAllApp.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isDesktop = size.width > ValuesOfAllApp.tabWidth;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: isDesktop
          ? Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(color: AppColors.backgroundColor),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.darkBlueColor.withOpacity(0.05),
            ),
          ),
        ],
      )
          : Container(color: AppColors.backgroundColor), // mobile/tablet
      leading: Image.asset(ImagePath.notify),
      actions: [
        const SizedBox(width: 10,),
        AppText(
          text: LanguagePath.profile,
          style: Fontspath.appTextStyle(
            fontSize: 18,
            fontWeightIndex: FontSelectionData.fontW400,
            color: AppColors.blackColor,
          ),
        ),
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
