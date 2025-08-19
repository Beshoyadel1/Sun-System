import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system/l10n/app_localizations.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sun_system/view/Auth/AuthWidget/ButtonAuth.dart';
import 'package:sun_system/view/Auth/AuthWidget/LineAuth.dart';

class FirstPageAuth extends StatefulWidget {
  static const String RouteName = 'FirstPageAuth';
  const FirstPageAuth({super.key});

  @override
  State<FirstPageAuth> createState() => _FirstPageAuthState();
}

class _FirstPageAuthState extends State<FirstPageAuth> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.logo,
              height: height * 0.09,
            ),
            SizedBox(height: height * 0.05),
            Text(
              AppLocalizations.of(context)!.login,
              //textAlign: TextAlign.center,
              style: Fontspath.w500readexPro26(
                color: AppColors.lightblackcolor,
              ),

            ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.log_in_as_an_individual,
              //textAlign: TextAlign.center,
              style: Fontspath.w400readexPro17(
                color: AppColors.lightblackcolor,
              ),

            ),
            SizedBox(height: height * 0.03),
            Row(
              children: [
                Buttonauth(
                    backgroundcolor: AppColors.orangecolor.withOpacity(0.6),
                    text: AppLocalizations.of(context)!.register_as_individuals,
                    fontcolor: AppColors.whitecolor,),
                SizedBox(
                  width: width*0.02,
                ),
                Buttonauth(
                    backgroundcolor: AppColors.darkbluecolor.withOpacity(0.6),
                    text: AppLocalizations.of(context)!.register_as_companies,
                  fontcolor: AppColors.whitecolor,)
              ],
            ),
            SizedBox(height: height * 0.05),
            Image.asset(
                ImagePath.car,
              height:height*0.15,
            ),
            SizedBox(height: height * 0.05),
            Row(
              children: [
                LineAuth(),
                Text(
                    AppLocalizations.of(context)!.or_register_via,
                   style: Fontspath.w400readexPro16(color: AppColors.darkbluecolor)
                ),
                LineAuth()
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Buttonauth(
                  backgroundcolor: AppColors.linecolor,
                  text: AppLocalizations.of(context)!.apple_account,
                  fontcolor: AppColors.darkbluecolor,
                  image: ImagePath.apple,
                ),
                SizedBox(
                  width: width*0.035,
                ),
                Buttonauth(
                  backgroundcolor: AppColors.linecolor,
                  text: AppLocalizations.of(context)!.google,
                  fontcolor: AppColors.darkbluecolor,
                  image: ImagePath.google,)
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.you_dont_have_an_account,style:Fontspath.w600LamaSans16(color: AppColors.blackcolor),),
                SizedBox(width: width * 0.02),
                InkWell(
                  onTap: (){},
                  child:Text(AppLocalizations.of(context)!.register_here,style:Fontspath.w600LamaSans14underline(
                      color: AppColors.orangecolor,
                  ),)
                  ,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
