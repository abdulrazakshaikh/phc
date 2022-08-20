import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/funds/funds.dart';
import 'package:phc/funds/withdrawfunds.dart';
import 'package:phc/login.dart';
import 'package:phc/portfolio/portfolio.dart';
import 'package:phc/profile/profile.dart';
import 'package:phc/report/report.dart';
import 'package:phc/research.dart';
import 'package:phc/theme.dart';
import 'package:phc/widgets/apierror.dart';
import 'package:phc/widgets/nointernet.dart';

import 'dashboard/dashboard.dart';
import 'splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isLightTheme = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      title: 'Phillip Capital',
      debugShowCheckedModeBanner: false,
      theme: lightthemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      home: SafeArea(
        top: false,
        child: 
        SplashScreen()
        // Login()
        // Dashboard()
        // Report()
        // Portfolio()
        // Funds()
        // WithdrawFunds()
        // Profile()
        // NoInternet()
        // ApiError()
      )
    );
  }
}

