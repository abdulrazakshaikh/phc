import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class ProfileChangeTheme extends StatefulWidget {
  @override
  _ProfileChangeThemeState createState() => _ProfileChangeThemeState();
}


class _ProfileChangeThemeState extends State<ProfileChangeTheme> with TickerProviderStateMixin{

@override
Widget build(BuildContext context) {
  return Container(
    constraints: BoxConstraints(
      maxHeight: 245,
    ),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            color: Theme.of(context).colorScheme.background,
            
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text('App Theme',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [         
                    
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Row(
                        children: [
                          
                          
                          Expanded(
                            child: OutlinedButton(
                              onPressed: (){},
                              style: OutlinedButton.styleFrom(
                                primary: Theme.of(context).colorScheme.onSecondary,                       
                                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                                alignment: Alignment.center,
                                side: BorderSide(width: 1, color: Theme.of(context).colorScheme.onSecondary),
                              ),
                              child: Text('Dark',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                            onPressed: (){
                            }, 
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).colorScheme.onSecondary, 
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                              alignment: Alignment.center,
                            ),
                            child: Text('Light',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.button,
                              ),
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),


                
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NOTE : '.toUpperCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Expanded(
                          child: Text('by clicking the change mode button it will change the overall app display mode.',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.caption,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                  onPressed: (){
                  }, 
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary, 
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    alignment: Alignment.center,
                  ),
                  child: Text('Change Theme',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.button,
                    ),
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
