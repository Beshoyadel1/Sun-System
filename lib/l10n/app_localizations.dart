import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];
  String get language;
  String get arabic;
  String get english;
  String get home;
  String get profile;
  String get login;
  String get dont_have_account;
  String get create_account;
  String get forget_password;
  String get login_with_google;
  String get username;
  String get password;
  String get or;
  String get logout;
  String get name;
  String get email;
  String get re_password;
  String get already_have_account;
  String get reset_password;
  String get verify_email;
  String get phone_number;
  String get log_in_as_an_individual;
  String get register_as_individuals;
  String get register_as_companies;
  String get or_register_via;
  String get apple_account;
  String get google;
  String get you_dont_have_an_account;
  String get register_here;
  String get please_enter_your_phone;
  String get redeem_here;
  String get login_as_a_guest_user;
  String get registeranewaccount;
  String get Pleaseenteryouraccountinformationandpassword;
  String get createanaccountinthenameofacompany;
  String get confirmPassword;
  String get pleaseenterthepasswordsenttoyourphonenumber;
  String get ididnotreceiveamessage;
  String get resend;


}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
