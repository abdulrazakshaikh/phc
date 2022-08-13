import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/constants.dart';
import 'package:phc/dashboard/dash_explore.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/menudrawer.dart';

import 'dash_accordioncard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> with TickerProviderStateMixin{

  bool isLightTheme = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      drawer: MenuDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
            // automaticallyImplyLeading : false,
            // backgroundColor: Theme.of(context).primaryColor,
            // backgroundColor: Colors.transparent,
            
            // floating: true,
            // pinned: false,
            // snap: true,
            expandedHeight: 150,
            titleSpacing: 10,
            title: Text('Dashboard',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).appBarTheme.titleTextStyle,
              color: Colors.white
            ),
            ),
            toolbarHeight: 65,
            actions: <Widget>[
              Container(
                width: 42, height: 42,
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'images/addfund.svg',
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                width: 42, height: 42,
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                child: IconButton(
                  icon: Icon(Icons.notifications_outlined, color: Colors.white, size: 24),
                  onPressed: () {},
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Container(
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
                padding: EdgeInsets.only(top: 54),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  Container(
                    child: Column(
                      children: [
                        Text('Available Funds'.toUpperCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.7,
                          color: Colors.white
                        ),
                        ),
                        SizedBox(height: 10),
                        Text('₹ 74,134',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline2,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                          color: Colors.white
                        ),
                        ),
                      ],
                    )
                  ),
                  

                  ],
                ),
              ),
            ) 
          ),
          ];
        },
        body: ListView(
          // padding: EdgeInsets.all(15),
          children: [
            Container(

              decoration: BoxDecoration(
                color: 
                isLightTheme ? PhcGradientLightColor2 :  PhcGradientDarkColor2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    DashAccordionCard(),    
                    SizedBox(height: 15),
                    DashExplore(),
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
