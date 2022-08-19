import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dashboard.dart';
import 'package:phc/portfolio/portfolio_commodities.dart';
import 'package:phc/portfolio/portfolio_equities.dart';
import 'package:phc/portfolio/portfolio_futureoptions.dart';
import 'package:phc/portfolio/portfolio_mutualfunds.dart';
import 'package:phc/portfolio/portfolio_summary.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/menudrawer.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin{


List myaccountmenuList = [
    {
      "id": "001",
      "title" : "Personal Details",
    },
    {
      "id": "002",
      "title" : "Nominee Details",
    },
    {
      "id": "003",
      "title" : "Bank Details",
    },
    {
      "id": "004",
      "title" : "Income Details",
    },
    {
      "id": "005",
      "title" : "Account Reactivation",
    },
  ];

  List settingmenuList = [
    {
      "id": "001",
      "title" : "Change Password",
    },
    {
      "id": "002",
      "title" : "Change Theme",
    },
    {
      "id": "003",
      "title" : "Refer & Earn",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // drawer: MenuDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context) => Dashboard()
              ),
            );
          }, 
          icon: Icon(Icons.arrow_back_outlined, size: 24),
        ),
        elevation: 0,
        titleSpacing: 10,
        title: Text('Profile'),
        actions: <Widget>[
          Container(
            width: 42, height: 42,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              alignment: Alignment.center,
              icon: SvgPicture.asset(
                'images/addfund.svg',
                height: 22,
                width: 22,
                color: Theme.of(context).appBarTheme.iconTheme!.color,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 42, height: 42,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_outlined, size: 24),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Stack(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
                      radius: 60,
                    ),
                    Positioned(
                      right: 4, bottom: 4,
                      child: ClipOval(
                        child: Material(
                          color: Theme.of(context).colorScheme.primary, // Button color
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.secondary, // Splash color
                            onTap: () {},
                            child: SizedBox(width: 32, height: 32, child: Icon(Icons.edit_outlined, size: 20, color: Colors.white,)),
                          ),
                        ),
                      ),
                      
                    )
                  ]),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text('Augustus Harrell',
                      style: GoogleFonts.robotoCondensed(
                      textStyle: Theme.of(context).appBarTheme.titleTextStyle,
                      fontSize: 18,
                      letterSpacing: 1.5
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Text('My Account'.toUpperCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                    ListView.separated(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: myaccountmenuList == null ? 0 : myaccountmenuList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                            )
                          ),
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        Map item = myaccountmenuList[index];
                        return ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          title: Text('${item["title"]}',
                          style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          ),
                          ),
                          trailing: Icon(Icons.chevron_right,
                          color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                          ),
                          onTap: (){},
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Text('Settings'.toUpperCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                    ListView.separated(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: settingmenuList == null ? 0 : settingmenuList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                            )
                          ),
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        Map item = settingmenuList[index];
                        return ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          title: Text('${item["title"]}',
                          style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          ),
                          ),
                          trailing: Icon(Icons.chevron_right,
                          color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                          ),
                          onTap: (){},
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            
            
        ],
      )
    );
  }
}
