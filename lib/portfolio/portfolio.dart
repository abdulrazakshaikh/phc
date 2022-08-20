import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/portfolio/portfolio_commodities.dart';
import 'package:phc/portfolio/portfolio_equities.dart';
import 'package:phc/portfolio/portfolio_futureoptions.dart';
import 'package:phc/portfolio/portfolio_mutualfunds.dart';
import 'package:phc/portfolio/portfolio_summary.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/menudrawer.dart';


class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {   
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      drawer: MenuDrawer(),
      appBar: AppBar(
        elevation: 3,
        titleSpacing: 10,
        title: Text('Portfolio'),
        actions: <Widget>[
          Container(
            width: 42, height: 42,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              alignment: Alignment.center,
              icon: SvgPicture.asset(
                'assets/images/addfund.svg',
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
          controller: _tabController,
          isScrollable: true,
          onTap: (int value) {
            setState(() {
              _tabController.index = value;
            });
          },
          tabs: [
            Tab(text: 'Summary'),
            Tab(text: 'Equities'),
            Tab(text: 'Future & Options'),
            Tab(text: 'Commodities'),
            Tab(text: 'Mutual Funds'),
          ]
        ),

      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(), 
        controller: _tabController,
        children: [
          
          PortfolioSummary(),
          PortfolioEquities(),
          PortfolioFutureOptions(),
          PortfolioCommodities(),
          PortfolioMutualFunds(),

          
          
        ],
      ),
    );
  }
}
