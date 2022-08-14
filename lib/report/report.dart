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


class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> with TickerProviderStateMixin{


  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 6,
    child: Scaffold(
      bottomNavigationBar: BottomNavigation(),
      drawer: MenuDrawer(),
      appBar: AppBar(
        elevation: 3,
        titleSpacing: 10,
        title: Text('Report'),
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
        bottom: TabBar(
          indicatorColor: Theme.of(context).primaryColor,
          
          unselectedLabelColor: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
          unselectedLabelStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle2,
            letterSpacing: 1.2
          ),
          labelColor: Theme.of(context).primaryColor,
          labelStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle2,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold
          ),
          isScrollable: true,
          tabs: [
            Tab(text: 'Trading'),
            Tab(text: 'Mutual Funds'),
            Tab(text: 'Advisory'),
            Tab(text: 'PMS'),
            Tab(text: 'NBFC'),
            Tab(text: 'MTF'),
          ]
        ),

      ),
      body: TabBarView(
        children: [
          Center(child: Text('Trading')),
          Center(child: Text('Mutual Funds')),
          Center(child: Text('Advisory')),
          Center(child: Text('PMS')),
          Center(child: Text('NBFC')),
          Center(child: Text('MTF')),
        
        ],
      ),
    ),
    );
  }
}
