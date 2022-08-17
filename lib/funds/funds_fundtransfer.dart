import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsFundTransfer extends StatefulWidget {
  @override
  _FundsFundTransferState createState() => new _FundsFundTransferState();
}

class _FundsFundTransferState extends State<FundsFundTransfer> {
 

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
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(
                0,
                -1,
              ),
            )
          ]
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.secondary,                       
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                  alignment: Alignment.center,
                  side: BorderSide(width: 1, color: Theme.of(context).colorScheme.secondary),
                ),
                child: Text('Withdraw',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.button,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary, 
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                alignment: Alignment.center,
              ),
              child: Text('Add Funds',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            ),
          ],
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
          child: Text('Fund Transfer',
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