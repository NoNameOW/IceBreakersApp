import 'package:flutter/material.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';
import 'package:icebreakers/custom_widgets/InfoCard.dart';
import 'package:icebreakers/pages/all_games.dart';

class Home extends StatefulWidget {





  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IceBreakers!'),
        backgroundColor: Colors.blue[800],
      ),
      body:
      Column(
        children: <Widget>[
          NewsCards(),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlueAccent,
            child: Text(
              'Games',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 33.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Unbuntu',
              ),
            ),
          ),
          RaisedButton(
            child: Text(
                'Never have I Ever'
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/never_have_I_ever');
            },
          ),
          RaisedButton(
            child: Text(
              'Who am I?'
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/who_am_I');
            },
          ),
          RaisedButton(
            child: Text('All Games'),
            onPressed: () {
              Navigator.pushNamed(context, '/all_games');
            },


          ),
          RandomGame(),
          Text('App made by Matthew Epshtein')

        ],
      )
    );
  }
}
