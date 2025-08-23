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
      'dontHaveAccount': 'ليس لديك حساب',
      'createAccount': 'إنشاء حساب',
      'forgetPassword': 'نسيت كلمة المرور',
      'loginWithGoogle': 'تسجيل الدخول باستخدام جوجل',
      'username': 'اسم المستخدم',
      'password': 'كلمة المرور',
      'or': 'أو',
      'logout': 'تسجيل الخروج',
      'name': 'الاسم',
      'email': 'بريد إلكتروني',
      'rePassword': 'إعادة كلمة المرور',
      'alreadyHaveAccount': 'هل لديك حساب بالفعل',
      'resetPassword': 'إعادة تعيين كلمة المرور',
      'verifyEmail': 'التحقق من البريد الإلكتروني',
      'phoneNumber': 'رقم الهاتف',
      'logInAsAnIndividual': 'قم بتسجيل الدخول كأفراد او شركات',
      'registerAsIndividuals': 'تسجيل كأفراد',
      'registerAsCompanies': 'تسجيل كشركات',
      'orRegisterVia': 'أو تسجيل عبر',
      'appleAccount': 'حساب أبل',
      'google': 'جوجل',
      'youDontHaveAnAccount': 'ليس لديك حساب',
      'registerHere': 'تسجيل هنا',
      'pleaseEnterYourPhone': 'برجاء ادخال رقم الهاتف وكلمة المرور',
      'redeemHere': 'استرد من هنا',
      'loginAsAGuestUser': 'دخول كضيف مستخدم',
      'registerANewAccount': 'تسجيل حساب جديد',
      'pleaseEnterYourAccountInformationAndPassword':
      'برجاء ادخال بيانات الحساب وكلمة المرور',
      'createAnAccountInTheNameOfACompany': 'انشاء حساب باسم شركة',
      'confirmPassword': 'تأكيد الرقم السري',
      'pleaseEnterThePasswordSentToYourPhoneNumber':
      'برجاء ادخال الرقم السري التي تم ارسالها على رقم الهاتف',
      'iDidNotReceiveAMessage': 'لم اتلقي رسالة',
      'resend': 'إعادة ارسال',
    },
    'en': {
      'language': 'Language',
      'arabic': 'Arabic',
      'english': 'English',
      'home': 'Home',
      'profile': 'Profile',
      'login': 'Login',
      'dontHaveAccount': 'Don’t Have Account ?',
      'createAccount': 'Create Account',
      'forgetPassword': 'Forget Password',
      'loginWithGoogle': 'Login With Google',
      'username': 'Username',
      'password': 'Password',
      'or': 'OR',
      'logout': 'Logout',
      'name': 'Name',
      'email': 'Email',
      'rePassword': 'Re Password',
      'alreadyHaveAccount': 'Already Have Account',
      'resetPassword': 'Reset Password',
      'verifyEmail': 'Verify Email',
      'phoneNumber': 'Phone Number',
      'logInAsAnIndividual': 'Log in as an individual or company',
      'registerAsIndividuals': 'Register as individuals',
      'registerAsCompanies': 'Register as companies',
      'orRegisterVia': 'Or register via',
      'appleAccount': 'Apple Account',
      'google': 'Google',
      'youDontHaveAnAccount': 'You dont have an account',
      'registerHere': 'Register here',
      'pleaseEnterYourPhone': 'Please enter your phone number and password.',
      'redeemHere': 'Redeem here',
      'loginAsAGuestUser': 'Login as a guest user',
      'registerANewAccount': 'Register a new account',
      'pleaseEnterYourAccountInformationAndPassword':
      'Please enter your account information and password.',
      'createAnAccountInTheNameOfACompany': 'Create an account in the name of a company',
      'confirmPassword': 'Confirm Password',
      'pleaseEnterThePasswordSentToYourPhoneNumber':
      'Please enter the password sent to your phone number',
      'iDidNotReceiveAMessage': 'I did not receive a message',
      'resend': 'Resend',
    },
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