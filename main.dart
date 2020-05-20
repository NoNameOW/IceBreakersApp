import 'package:flutter/material.dart';
import 'package:icebreakers/pages/home.dart';
import 'package:icebreakers/pages/never_have_I_ever.dart';
import 'package:icebreakers/pages/who_am_I.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';
import 'package:icebreakers/pages/all_games.dart';
import 'package:icebreakers/pages/two_truths_and_a_lie.dart';

void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/':(context) => Home(),
    '/never_have_I_ever':(context) => NHIE(),
    '/who_am_I': (context) => WAI(),
    '/all_games':(context) => AG(),
    '/two_truths_and_a_lie':(context) => TTAAL()
  },




));


