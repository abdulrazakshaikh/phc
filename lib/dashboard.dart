import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> with TickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DASHBOARD'),
      ),
    );
  }
}
