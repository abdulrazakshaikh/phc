import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsMarginAgainstHolding extends StatefulWidget {
  @override
  _FundsMarginAgainstHoldingState createState() => new _FundsMarginAgainstHoldingState();
}

class _FundsMarginAgainstHoldingState extends State<FundsMarginAgainstHolding> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.35),
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(
                0,
                -1,
              ),
            )
          ]
        ),
        padding: EdgeInsets.all(15),
        child: Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.secondary,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.center,
            ),
            child: Text('Create Margin',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.button,
              ),
            ),
          ),
        ),
      ),
      body: Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          child: Text('Margin Against Holding',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headline3,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
          ),
        ),
        ],
      ),
    ),
    );
    
  }
}