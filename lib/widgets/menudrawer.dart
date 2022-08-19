import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/constants.dart';
import 'package:phc/funds/funds.dart';
import 'package:phc/login.dart';
import 'package:phc/portfolio/portfolio.dart';
import 'package:phc/profile/profile.dart';
import 'package:phc/report/report.dart';

import 'package:phc/dashboard/dashboard.dart';
import 'package:phc/research.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => new _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  
  bool isLightTheme = true;
  
  var _clientcode = [
    "102458",
    "202457",
    "302456",
    "402455",
    "502454",
    "602453",
    "702452",
    "802451"
  ];

  var selectedValue = '102458';

  List menuList = [
    {
      "id": "001",
      "title" : "Dashboard",
      "icon" : Icons.home_outlined,
    },
    {
      "id": "002",
      "title" : "Portfolio",
      "icon" : Icons.business_center_outlined,
    },
    {
      "id": "003",
      "title" : "Funds",
      "icon" : Icons.payments_outlined,
    },
    {
      "id": "004",
      "title" : "Reports",
      "icon" : Icons.insert_chart_outlined_outlined,
    },
    {
      "id": "005",
      "title" : "Research",
      "icon" : Icons.query_stats_outlined,
    },
    {
      "id": "006",
      "title" : "Downloads",
      "icon" : Icons.file_download_outlined,
    },
    {
      "id": "007",
      "title" : "Settings",
      "icon" : Icons.settings_outlined,
    },
    {
      "id": "008",
      "title" : "Refer & Earn",
      "icon" : Icons.share_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 1,
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 1.0],
                  colors: 
                  // [Colors.amber, Colors.teal],
                  isLightTheme ? [PhcGradientLightColor1, PhcGradientLightColor2] : [PhcGradientDarkColor1, PhcGradientDarkColor2]
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Augustus Harrell',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).appBarTheme.titleTextStyle,
                          color: Colors.white
                        ),
                        ),
                        SizedBox(height: 5),
                        OutlinedButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, 
                              MaterialPageRoute(
                                builder: (BuildContext context) => Profile()
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Theme.of(context).colorScheme.onSecondary,                       
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            alignment: Alignment.center,
                            side: BorderSide(width: 1, color: Colors.white),
                          ),
                          child: Text('View Profile',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.button,
                              color: Colors.white,
                              fontSize: 11
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.white,)
                  ),
                ],
              ),
              
            ),

            Container(
              // height: 64,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border(
                  top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                  bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                ),
              ),
              
              child: Container(
                padding: EdgeInsets.all(15),
                child: DropdownButtonFormField(
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Switch Client',
                    labelStyle: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.bodyText2,
                      letterSpacing: 1.8,
                      fontWeight: FontWeight.w500
                    ),
                    
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                    ),
                  ),
                  items: _clientcode.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(), 
                  focusColor: Colors.white,
                  onChanged: (String? newValue){
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                )
               
              ),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              alignment: Alignment.topLeft,
              child: Text('Navigation'.toUpperCase(),
              style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.subtitle2,
              fontWeight: FontWeight.w300,
              letterSpacing: 2.5,
              ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: menuList == null ? 0 : menuList.length,
                itemBuilder: (BuildContext context, int index) {
                  Map item = menuList[index];
                  return ListTile(
                    horizontalTitleGap: 0,
                    title: Text('${item["title"]}',
                    style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    ),
                    ),
                    leading: Icon(item["icon"],
                    color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                    ),
                    trailing: Icon(Icons.chevron_right,
                    color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                    ),
                    onTap: (){
                      
                      item["id"] == '001' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Dashboard()
                        ),
                      )
                      :
                      item["id"] == '002' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Portfolio()
                        ),
                      )
                      :
                      item["id"] == '003' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Funds()
                        ),
                      )
                      :
                      item["id"] == '004' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Report()
                        ),
                      )
                      :
                      item["id"] == '005' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Research()
                        ),
                      )
                      :
                      item["id"] == '007' ?
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => Profile()
                        ),
                      )
                      :
                      null
                      ;

                    },
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Theme.of(context).dividerColor)
                )
              ),
              child: ListTile(
                title: Text('Logout',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                trailing: Icon(Icons.logout_outlined,
                color: Theme.of(context).colorScheme.onSecondary,
                ),
                onTap: () {
                  Navigator.pushReplacement<void, void>(context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => Login()
                    )
                  );
                },
              ),
            ),

            
          ],
        ),
      );
    
    
  }
}