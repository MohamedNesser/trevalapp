import 'package:flutter/material.dart';
import 'package:login_form/Screens/Homes_Screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:login_form/Screens/Screen_Travel.dart';
import 'package:login_form/Screens/Screen_detales.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      home: homescreen(),
      routes: {
        '/catogery_trip':(ctx)=>travels(),
        '/detalescreens':(ctx)=>detalestrips()
      },
    );
  }
}
