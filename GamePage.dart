import 'package:flutter/material.dart';
import 'package:icebreakers/custom_widgets/InfoCard.dart';

class PageLink {
  String title;
  String location;

  PageLink({this.title, this.location});
}




class GamePage extends StatelessWidget {

  final String text;
  final String title;

  GamePage({this.text, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0,),
            Container(
              color: Colors.lightBlueAccent,
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0,
                    fontFamily: 'Ubuntu'
                ),
              ),

            ),
            InfoCard(
              text: text,
            )
          ],
        );
  }
}

//"""Never have I ever(or in this case, 10 fingers) is a popular icebreaker and party game. Here's how it works! Everyone in the group has 10 fingers, or lives, and if they lose them all, they are out. The first person in the group makes a statement about something the have NEVER done. If a person in the group has done the action the person making the statement described, they lose one lives. Then, the second person makes a statement, and so on and so forth. The game continues like this until all but one of the players has any lives, or fingers, left. """

class GameButton extends StatelessWidget {

  final PageLink link;
  GameButton({this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              link.title,
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Ubuntu'
              ),
            ),
            RaisedButton(
                child: Text(
                    'Go to'
                ),
                onPressed: () {
                  Navigator.pushNamed(context, link.location);
                }
            )
          ],
        ),
      ),
    );

  }
}

