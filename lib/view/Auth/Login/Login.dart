import 'package:flutter/material.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/view/Auth/AuthWidget/ButtonAuth.dart';
import 'package:sun_system/view/Auth/AuthWidget/TextFeildAuth.dart';
import 'package:get/get.dart';
import 'package:sun_system/l10n/app_localizations.dart';

class Login extends StatefulWidget {
  static const String RouteName = 'Login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.03),
            Image.asset(
              ImagePath.logo,
              height: height * 0.09,
            ),
            SizedBox(height: height * 0.05),
            Text(
              AppLocalizations.of(context)!.login,
              //textAlign: TextAlign.center,
              style: Fontspath.w500readexPro22(
                color: AppColors.lightblackcolor,
              ),

            ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.please_enter_your_phone,
              //textAlign: TextAlign.center,
              style: Fontspath.w400readexPro14(
                color: AppColors.lightblackcolor,
              ),

            ),
            SizedBox(height: height * 0.03),
            Text(
              AppLocalizations.of(context)!.username,
              //textAlign: TextAlign.center,
              style: Fontspath.w400readexPro14(
                color: AppColors.darkblackcolor,
              ),
            ),
            SizedBox(height: height * 0.02),
            Textfeildauth(),
            SizedBox(height: height * 0.03),
            Text(
              AppLocalizations.of(context)!.password,
              //textAlign: TextAlign.center,
              style: Fontspath.w400readexPro14(
                color: AppColors.darkblackcolor,
              ),
            ),
            SizedBox(height: height * 0.02),
            Textfeildauth(isPassword: true,),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.02),
                Text(AppLocalizations.of(context)!.forget_password,
                style: Fontspath.w600LamaSans16(color: AppColors.blackcolor),),
                SizedBox(width: width * 0.04),
                Text(AppLocalizations.of(context)!.redeem_here,
                  style: Fontspath.w600LamaSans14underline(color: AppColors.orangecolor.withOpacity(0.8)),),
              ],

            ),
            SizedBox(height: height * 0.02),
            Buttonauth(
                isclick: true,
                backgroundcolor: AppColors.orangecolor.withOpacity(0.8),
                text: AppLocalizations.of(context)!.login,
                fontcolor: AppColors.whitecolor
            ),
            SizedBox(height: height * 0.01),
            InkWell(
              onTap: (){},
              child: Text(AppLocalizations.of(context)!.login_as_a_guest_user,
                style: Fontspath.w400readexPro12(color: AppColors.darkblackcolor)?.copyWith(
                    decoration: TextDecoration.underline
                )
                ,),
            ),
            SizedBox(height: height * 0.03),
            InkWell(
              onTap: (){},
              child: Image.asset(
                ImagePath.faceid,
                height: height*0.08,
              ),
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.dont_have_account,
                style: Fontspath.w600LamaSans16(color: AppColors.blackcolor),),
                SizedBox(width: width * 0.02),
               InkWell(
                 onTap: (){
                   Get.toNamed('/Signup');
                 },
                 child:  Text(AppLocalizations.of(context)!.register_here
                   , style: Fontspath.w600LamaSans14underline(color: AppColors.orangecolor),),
               )
              ],
            ),
          ],
        ),
      ),
      )
    );
  }
}
