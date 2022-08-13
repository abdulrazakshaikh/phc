import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey.withOpacity(0.3))
        ),
        color: Theme.of(context).colorScheme.surface
      ),
      child: BottomNavigationBar( 
        iconSize: 26,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(           
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.home_outlined)
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.business_center_outlined),
            ),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.payments_outlined),
            ),
            label: 'Fund',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.insert_chart_outlined_outlined),
            ),
            label: 'Report',
          ),
        ],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: 
        GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.subtitle2,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          color: Colors.grey,
        ),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedLabelStyle: 
        GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.subtitle2,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          color: Theme.of(context).colorScheme.primary
        ),
        elevation: 1,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      );
    
    
  }
}