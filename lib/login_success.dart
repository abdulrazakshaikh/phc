import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/forgot_password.dart';

import 'package:phc/forgot_userid.dart';

import 'dashboard/dashboard.dart';

class LoginSuccess extends StatefulWidget {
  @override
  _LoginSuccessState createState() => _LoginSuccessState();
}


class _LoginSuccessState extends State<LoginSuccess> with TickerProviderStateMixin{
    
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement<void, void>(context, 
        MaterialPageRoute(
          builder: (BuildContext context) => Dashboard()
        )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, value) {
           return [
            SliverAppBar(
              expandedHeight: 36,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                  background:  Container(
                  // margin: EdgeInsets.only(bottom: 15),
                  height: 36,
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/logolight.png', fit: BoxFit.contain),
                ),
              )
            ),
           ];
          },
          body: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300, width: 300,
                  child: Image.asset('assets/images/success.png', fit: BoxFit.contain),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Text('Congratulations',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('you have logged in to your account successfully', textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          letterSpacing: 1.5
                        ),

                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

        ),
      ),
    );
  }
}
