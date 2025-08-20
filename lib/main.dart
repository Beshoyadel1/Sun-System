import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_bloc.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_state.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpCubit.dart';
import 'package:sun_system/l10n/app_localizations.dart';
import 'package:sun_system/view/Auth/FirstPageAuth/FirstPageAuth.dart';
import 'package:sun_system/view/Auth/Login/Login.dart';
import 'package:sun_system/view/Auth/OTP/OTP.dart';
import 'package:sun_system/view/Auth/Signup/Signup.dart';

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
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return GetMaterialApp(   // <-- Use GetMaterialApp here
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(state.languageCode),
          themeMode: ThemeMode.light,
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: () => FirstPageAuth()),
            GetPage(name: '/login', page: () => Login()),
            GetPage(name: '/Signup', page: () => Signup()),
            GetPage(name: '/Otp', page: () => Otp()),
          ],
        );
      },
    );
  }
}
