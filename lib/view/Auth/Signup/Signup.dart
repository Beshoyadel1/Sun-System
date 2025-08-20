import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sun_system/utiles/assets/AppColors.dart';
import 'package:sun_system/l10n/app_localizations.dart';
import 'package:sun_system/utiles/assets/Fontspath.dart';
import 'package:sun_system/utiles/assets/ImagePath.dart';
import 'package:sun_system/view/Auth/AuthWidget/ButtonAuth.dart';
import 'package:sun_system/view/Auth/AuthWidget/TextFeildAuth.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Controllers
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  bool isClick = false;

  void _validateForm() {
    final username = _usernameController.text.trim();
    final phone = _phoneController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final rePassword = _rePasswordController.text.trim();

    setState(() {
      if (username.isNotEmpty &&
          phone.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          rePassword.isNotEmpty &&
          password == rePassword) {
        isClick = true;
      } else {
        isClick = false;
      }
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                AppLocalizations.of(context)!.registeranewaccount,
                style: Fontspath.w500readexPro22(
                  color: AppColors.lightblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                AppLocalizations.of(context)!
                    .Pleaseenteryouraccountinformationandpassword,
                style: Fontspath.w400readexPro14(
                  color: AppColors.lightblackcolor,
                ),
              ),
              SizedBox(height: height * 0.03),

              // Username
              Text(
                AppLocalizations.of(context)!.username,
                style: Fontspath.w400readexPro14(
                  color: AppColors.darkblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Textfeildauth(
                controller: _usernameController,
                onChanged: (_) => _validateForm(),
              ),

              SizedBox(height: height * 0.03),

              // Phone
              Text(
                AppLocalizations.of(context)!.phone_number,
                style: Fontspath.w400readexPro14(
                  color: AppColors.darkblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Textfeildauth(
                controller: _phoneController,
                isNumber: true,
                onChanged: (_) => _validateForm(),
              ),

              SizedBox(height: height * 0.03),

              // Email
              Text(
                AppLocalizations.of(context)!.email,
                style: Fontspath.w400readexPro14(
                  color: AppColors.darkblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Textfeildauth(
                controller: _emailController,
                onChanged: (_) => _validateForm(),
              ),

              SizedBox(height: height * 0.03),

              // Password
              Text(
                AppLocalizations.of(context)!.password,
                style: Fontspath.w400readexPro14(
                  color: AppColors.darkblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Textfeildauth(
                controller: _passwordController,
                isPassword: true,
                onChanged: (_) => _validateForm(),
              ),

              SizedBox(height: height * 0.03),

              // Re-Password
              Text(
                AppLocalizations.of(context)!.re_password,
                style: Fontspath.w400readexPro14(
                  color: AppColors.darkblackcolor,
                ),
              ),
              SizedBox(height: height * 0.02),
              Textfeildauth(
                controller: _rePasswordController,
                isPassword: true,
                onChanged: (_) => _validateForm(),
              ),

              SizedBox(height: height * 0.03),
              Buttonauth(
                isclick: isClick,
                backgroundcolor:
                isClick ? AppColors.orangecolor : AppColors.graycolor,
                text: AppLocalizations.of(context)!.create_account,
                fontcolor: AppColors.whitecolor,
                onTap: () {
                  if (isClick) {
                    Get.toNamed('/Otp');
                  } else {
                    // لو حابب تضيف رسالة خطأ
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Please fill all fields and make sure passwords match",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppLocalizations.of(context)!.createanaccountinthenameofacompany,
                    style: Fontspath.w600LamaSans16(color: AppColors.blackcolor),),
                  SizedBox(width: width * 0.02),
                  InkWell(
                    onTap: (){

                    },
                    child:  Text(AppLocalizations.of(context)!.register_here
                      , style: Fontspath.w600LamaSans14underline(color: AppColors.orangecolor),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
