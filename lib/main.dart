import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_bloc.dart';
import 'package:sun_system/Controller/Cubit/LanguageBloc/language_state.dart';
import 'package:sun_system/l10n/app_localizations.dart';
import 'package:sun_system/view/Auth/FirstPageAuth/FirstPageAuth.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageBloc()),
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(state.languageCode),
          themeMode: ThemeMode.light,
          initialRoute: FirstPageAuth.RouteName,
          routes: {
            FirstPageAuth.RouteName: (context) => const FirstPageAuth(),
          },
        );
      },
    );
  }
}
