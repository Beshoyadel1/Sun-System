import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_bloc.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_state.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpCubit.dart';
import 'package:sun_system/Controller/Cubit/language.dart';
import 'package:sun_system/view/Auth/FirstPageAuth/FirstPageAuth.dart';
import 'package:sun_system/view/Auth/Login/Login.dart';
import 'package:sun_system/view/Auth/OTP/OTP.dart';
import 'package:sun_system/view/Auth/Signup/Signup.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageBloc()),
         BlocProvider(create: (_) => OtpCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        final currentLocale = Locale(state.languageCode);
        return MaterialApp(
          locale: const Locale('ar'),
          supportedLocales: supportedLocales,
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl, // English is LTR
              child: child!,
            );
          },
          home: const FirstPageAuth(),
        );
      },
    );

  }
}
