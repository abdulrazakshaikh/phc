import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}


class _ForgotPasswordState extends State<ForgotPassword> with TickerProviderStateMixin{

@override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.fromLTRB(15,15,15,15),
    constraints: BoxConstraints(
      maxHeight: 250,
    ),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(15)
    ),

    // height: MediaQuery.of(context).size.height / 3,
    // height: 250,
    child: Column(
      children: [
          Container(
              child: Row(
                children: [
                  Text('Forgot Password'),
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)
                  )
                ],
              ),
            ),
          
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: TextField(
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintText: 'Enter UserId',
                    hintStyle: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.bodyText2,
                      letterSpacing: 1.8,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w300
                    ),
                    // prefixIcon: Icon(Icons.person_outlined),
                    
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: TextField(
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintText: 'Date of Birth',
                    hintStyle: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.bodyText2,
                      letterSpacing: 1.8,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w300
                    ),

                    suffixIcon: Icon(Icons.calendar_month_outlined),
                    
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.grey.withOpacity(0.5))
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  OutlinedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black87, 
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      alignment: Alignment.center,
                      side: BorderSide(width: 1, color: Colors.black87),
                    ),
                    child: Text('Cancel',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: (){
                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary, 
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      alignment: Alignment.center,
                    ),
                    child: Text('Submit',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
        ],
      ),
    );
  }

}
