import 'package:flutter/material.dart';
import 'package:icebreakers/pages/home.dart';
import 'package:icebreakers/pages/never_have_I_ever.dart';
import 'package:icebreakers/pages/who_am_I.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';
import 'package:icebreakers/pages/two_truths_and_a_lie.dart';
import 'package:icebreakers/custom_widgets/InfoCard.dart';

List<PageLink> pages = [
  PageLink(title: 'Never Have I Ever', location: '/never_have_I_ever'),
  PageLink(title: 'Who am I', location: '/who_am_I'),
  PageLink(title: 'Two truths and a lie', location: '/two_truths_and_a_lie')



];





class AG extends StatefulWidget {
  @override
  _AGState createState() => _AGState();
}

class _AGState extends State<AG> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Games'),
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: pages.map((page) => GameButton(link: page)).toList()


        )

    );
  }
}

class RandomGame extends StatefulWidget {
  @override
  _RandomGameState createState() => _RandomGameState();
}

class _RandomGameState extends State<RandomGame> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Random game'),
      onPressed: () {
        var shuflist = new List<PageLink>.from(pages);
        shuflist.shuffle();
        Navigator.pushNamed(context, shuflist[0].location);
      },
    );
  }
}



