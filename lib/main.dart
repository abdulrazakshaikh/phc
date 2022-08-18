import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/login.dart';
import 'package:phc/theme.dart';

import 'dashboard/dashboard.dart';
import 'splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 static bool isLightTheme = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phillip Capital',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: 'Roboto',
      //   colorScheme: ColorScheme(
      //     brightness: Brightness.dark, 
      //     primary: PhcPrimaryColor, 
      //     onPrimary: PhcPrimaryColor, 
      //     secondary: PhcSecondaryColor, 
      //     onSecondary: PhcSecondaryColor, 
      //     error: Colors.red, 
      //     onError: Colors.red, 
      //     background: PhcScaffoldBackgroundColor, 
      //     onBackground: PhcScaffoldBackgroundColor, 
      //     surface: PhcScaffoldBackgroundColor, 
      //     onSurface: PhcScaffoldBackgroundColor
      //   ),
      //   textTheme: TextTheme(
      //     headline1: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 48, fontWeight: FontWeight.w300, letterSpacing: 1.5)),
      //     headline2: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w300, letterSpacing: 1.2)),
      //     headline3: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 28, fontWeight: FontWeight.w400)),
      //     headline4: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.w400)),
      //     headline5: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w400)),
      //     headline6: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.w400)),
      //     subtitle1: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400)),
      //     subtitle2: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 14, fontWeight: FontWeight.w400)),
      //     bodyText1: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400)),
      //     bodyText2: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 14, fontWeight: FontWeight.w400)),
      //     caption: GoogleFonts.roboto(textStyle: TextStyle( fontFamily: 'Roboto', fontSize: 12, fontWeight: FontWeight.w400)),
      //     button: GoogleFonts.roboto(textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w600)),
      //   ),
      // ),
      theme: lightthemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      home: 
      SplashScreen()
      // Login()
      // Dashboard()
    );
  }
}

