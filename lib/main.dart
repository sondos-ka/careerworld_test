import 'package:careerworld/screens/SplashScreen.dart';
import 'package:careerworld/services/LocalProvider.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app-localization.dart';
import 'package:provider/provider.dart';


void main() {


  runApp(
      ChangeNotifierProvider(

      create: (BuildContext context) => LocaleProvider(),

      child: MyApp())  );
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Consumer<LocaleProvider>(builder: (context, provider, snapshot)
    {
      return MaterialApp(
        locale: provider.locale,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,

        supportedLocales: AppLocalizations.supportedLocales,

      );
    });
  }
}
