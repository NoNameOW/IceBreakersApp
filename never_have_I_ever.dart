import 'package:flutter/material.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';

class NHIE extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Never Have I Ever'),
      ),
      body: GamePage(
        title: "Never Have I Ever(10 fingers)",
        text: """Never have I ever(or in this case, 10 fingers) is a popular icebreaker and party game. Here's how it works! Everyone in the group has 10 fingers, or lives, and if they lose them all, they are out. The first person in the group makes a statement about something the have NEVER done. If a person in the group has done the action the person making the statement described, they lose one lives. Then, the second person makes a statement, and so on and so forth. The game continues like this until all but one of the players has any lives, or fingers, left. """,
      )

    );
  }
}
