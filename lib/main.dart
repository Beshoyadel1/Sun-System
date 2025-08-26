import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../../../Controller/Cubit/CarBrandCubit/LogoCarCubit.dart';
import '../../../../Controller/Cubit/ChooseFavouriteItemCubit/ChooseFavouriteItem.dart';
import '../../Controller/Cubit/CarBrandCubit/ModelCarCubit.dart';
import '../../Controller/Cubit/LanguageBloc/language_bloc.dart';
import '../../Controller/Cubit/LanguageBloc/language_state.dart';
import '../../Controller/Cubit/OtpCubit/OtpCubit.dart';
import '../../Controller/Cubit/SignupCubit/SignupCubit.dart';
import '../../Controller/Cubit/language.dart';
import '../../view/Auth/FirstPageAuth/FirstPageAuth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavouriteCubit()),
        BlocProvider(create: (context) => ModelCarCubit()),
        BlocProvider(create: (context) => LogoCarCubit()),
        BlocProvider(create: (context) => LanguageBloc()),
         BlocProvider(create: (_) => OtpCubit()),
        BlocProvider(create: (_) => SignupCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // print(MediaQuery.of(context).size.width);
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          supportedLocales: supportedLocales,
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: FirstPageAuth(),
        );
      },
    );

  }
}
