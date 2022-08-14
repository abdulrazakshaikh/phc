import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/report/report_tradinglist.dart';

class ReportTrading extends StatefulWidget {
  @override
  _ReportTradingState createState() => new _ReportTradingState();
}

class _ReportTradingState extends State<ReportTrading> {

  var _dropdownitems = [
    "Holding",
    "Ledger",
    "Profit & Loss",
    "Trades",
    "Contract",
    "AGTS",
    "STT"
  ];

  var selectedValue = 'Ledger';


  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            // border: Border(
            //   top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            //   bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            // ),
          ),
          
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: DropdownButtonFormField(
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      // labelText: 'Switch Client',
                      // labelStyle: GoogleFonts.roboto(
                      //   textStyle: Theme.of(context).textTheme.bodyText2,
                      //   letterSpacing: 1.8,
                      //   fontWeight: FontWeight.w500
                      // ),
                      
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                      ),
                    ),
                    items: _dropdownitems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(), 
                    onChanged: (String? newValue){
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: IconButton(
                  icon: Icon(Icons.tune_outlined),
                  onPressed: (){}, 
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: IconButton(                  
                  icon: Icon(Icons.file_download_outlined),
                  onPressed: (){}, 
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            border: Border(
              top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text('Total Balance',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle2,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
                ),
              ),
              Container(
                child: Text('₹ 6,312 Cr',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle2,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                ),
              ),
            ],
          ),
        ),
        ReportTradingList(),
        ],

    );
  }
}