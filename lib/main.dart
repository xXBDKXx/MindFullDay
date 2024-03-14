// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mindfullday_v1/login_page.dart';
import 'package:intl/date_symbol_data_local.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MindFullDay',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: LoginPage(),
     /*  localizationsDelegates: [
        GlobalKey.delegate; // Enables the use of Flutter'
      ],
       supportedLocales: [
         const Locale('en'),
         const Locale('fr')
       ], */
    );
  }
}
