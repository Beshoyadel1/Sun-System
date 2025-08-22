import 'package:flutter/material.dart';

List<Locale> supportedLocales = [
  const Locale('ar', 'SA'),
  const Locale('en', 'US'),
];

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'ar': {
      'language': 'اللغة',
      'arabic': 'العربية',
      'english': 'الانجليزية',
      'home': 'الرئيسية',
      'profile': 'الشخصية',
      'login': 'تسجيل الدخول',
      'dont_have_account': 'ليس لديك حساب',
      'create_account': 'إنشاء حساب',
      'forget_password': 'نسيت كلمة المرور',
      'login_with_google': 'تسجيل الدخول باستخدام جوجل',
      'username': 'اسم المستخدم',
      'password': 'كلمة المرور',
      'or': 'أو',
      'logout': 'تسجيل الخروج',
      'name': 'الاسم',
      'email': 'بريد إلكتروني',
      're_password': 'إعادة كلمة المرور',
      'already_have_account': 'هل لديك حساب بالفعل',
      'reset_password': 'إعادة تعيين كلمة المرور',
      'verify_email': 'التحقق من البريد الإلكتروني',
      'phone_number': 'رقم الهاتف',
      'log_in_as_an_individual': 'قم بتسجيل الدخول كأفراد او شركات',
      'register_as_individuals': 'تسجيل كأفراد',
      'register_as_companies': 'تسجيل كشركات',
      'or_register_via': 'أو تسجيل عبر',
      'apple_account': 'حساب أبل',
      'google': 'جوجل',
      'you_dont_have_an_account': 'ليس لديك حساب',
      'register_here': 'تسجيل هنا',
      'please_enter_your_phone': 'برجاء ادخال رقم الهاتف وكلمة المرور',
      'redeem_here': 'استرد من هنا',
      'login_as_a_guest_user': 'دخول كضيف مستخدم',
      'registeranewaccount': 'تسجيل حساب جديد',
      'Pleaseenteryouraccountinformationandpassword': 'برجاء ادخال بيانات الحساب وكلمة المرور',
      'createanaccountinthenameofacompany': 'انشاء حساب باسم شركة',
      'confirmPassword': 'تأكيد الرقم السري',
      'pleaseenterthepasswordsenttoyourphonenumber': 'برجاء ادخال الرقم السري التي تم ارسالها على رقم الهاتف',
      'ididnotreceiveamessage': 'لم اتلقي رسالة',
      'resend': 'إعادة ارسال',
    },
    'en':
    {
      "language": "Language",
      "arabic": "Arabic",
      "english": "English",
      "home": "Home",
      "profile": "Profile",
      "login": "Login",
      "dont_have_account": "Don’t Have Account ?",
      "create_account": "Create Account",
      "forget_password": "Forget Password",
      "login_with_google": "Login With Google",
      "username": "Username",
      "password": "Password",
      "or": "OR",
      "logout": "Logout",
      "name": "Name",
      "email": "Email",
      "re_password": "Re Password",
      "already_have_account": "Already Have Account",
      "reset_password": "Reset Password",
      "verify_email": "Verify Email",
      "phone_number": "Phone Number",
      "log_in_as_an_individual": "Log in as an individual or company",
      "register_as_individuals": "Register as individuals",
      "register_as_companies": "Register as companies",
      "or_register_via": "Or register via",
      "apple_account": "Apple Account",
      "google": "Google",
      "you_dont_have_an_account": "You dont have an account",
      "register_here": "Register here",
      "please_enter_your_phone": "Please enter your phone number and password.",
      "redeem_here": "Redeem here",
      "login_as_a_guest_user": "Login as a guest user",
      "registeranewaccount": "Register a new account",
      "Pleaseenteryouraccountinformationandpassword": "Please enter your account information and password.",
      "createanaccountinthenameofacompany": "Create an account in the name of a company",
      "confirmPassword": "Confirm Password",
      "pleaseenterthepasswordsenttoyourphonenumber": "Confirm Password Please enter the password sent to your phone number",
      "ididnotreceiveamessage": "I did not receive a message",
      "resend": "Resend"
    }


  };

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }


  String translate(String key) {
    return _localizedValues[locale.languageCode]![key] ?? key;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocales.contains(locale);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}