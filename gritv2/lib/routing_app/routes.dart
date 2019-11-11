import 'package:flutter/material.dart';

import 'package:gritv2/pages/first.dart';
import 'package:gritv2/pages/second.dart';
import 'package:gritv2/pages/landing_page.dart';
import 'package:gritv2/pages/chart_page.dart';
import 'package:gritv2/pages/login_screen.dart';
import 'package:gritv2/pages/card.dart';
import 'package:gritv2/pages/login.dart';
// import 'package:gritv2/game/shooting.dart';
import 'package:gritv2/pages/switch/onOffSwitch.dart';

final routes = {
  '/': (BuildContext context) => MyApp(),
  '/first': (BuildContext context) => FirstPage(),
  '/second': (BuildContext context) => SecondPage(),
  '/chartpage': (BuildContext context) => Chartpage(),
  '/loginscreen': (BuildContext context) => LoginScreen(),
  '/cardselect': (BuildContext context) => ContentsCards(),
  '/init': (BuildContext context) => LandingPage(),
  '/onoff': (BuildContext context) => OnOffSwitch(),
//  '/game': (BuildContext context) => Loadinggame(),
};