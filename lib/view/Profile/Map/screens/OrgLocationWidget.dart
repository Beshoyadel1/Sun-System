import 'package:flutter/material.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/FontSelectionData.dart';
import '../../../../utiles/assets/Fontspath.dart';
import '../../../../utiles/assets/ValuesOfAllApp.dart';
import '../../../../utiles/assets/languagePath.dart';
import '../../../../view/Profile/Map/screens/OpenStreetMapScreen.dart';
import '../../../../view/customWidget/AppText.dart';
import '../../../../view/customWidget/AppTextFeild.dart';

class OrgLocationWidget extends StatefulWidget {
  const OrgLocationWidget({super.key, required this.location});

  final String location;

  @override
  State<OrgLocationWidget> createState() => _OrgLocationWidgetState();
}

class _OrgLocationWidgetState extends State<OrgLocationWidget> {
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    if (widget.location.isEmpty) {
      latitude = 0;
      longitude = 0;
    } else {
      latitude = double.parse(widget.location.split(',')[0]);
      longitude = double.parse(widget.location.split(',')[1]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTablet = size.width <= ValuesOfAllApp.customTabWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        if (!isTablet) ...{
          Text(
            "Organization Location",
            style: TextStyle(
              color: AppColors.orangeColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        },
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.orangeColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                OpenStreetMapScreen(
                  latitude: latitude,
                  longitude: longitude,
                ),
                Container(
                  padding: EdgeInsetsGeometry.all(10),
                  margin: EdgeInsetsGeometry.all(20),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: LanguagePath.searchYourAddress,
                        style: Fontspath.appTextStyle(
                          fontWeightIndex: FontSelectionData.fontW400,
                          color: AppColors.darkBlackColor,
                          fontSize: 16,
                        ),
                      ),
                      AppTextFeild(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
