import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsLimit extends StatefulWidget {
  @override
  _FundsLimitState createState() => new _FundsLimitState();
}

class _FundsLimitState extends State<FundsLimit> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          child: Text('Limit',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headline3,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
          ),
        ),
        ],
      ),
    );
  }
}