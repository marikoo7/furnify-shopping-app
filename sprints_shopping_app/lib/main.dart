import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/screens/welcome_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FurniFy',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'), 
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF3F4025)),
        fontFamily: 'Suwannaphum-Regular',
      ),
      home: const WelcomesScreen(),
    );
  }
}
