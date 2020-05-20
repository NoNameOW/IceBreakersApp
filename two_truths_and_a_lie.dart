import 'package:flutter/material.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';

class TTAAL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two truths and a lie'),
      ),
      body: GamePage(
        title: 'Two truths and one lie',
        text: """Two truths and one lie a icebreaker game that helps people get to know each other and make connections. Here is how it works! the games starts with the first person in the group making three statements about themselves. Two of the statements are true, one of them is a lie. The other people in the group must now guess which one of the statements is a lie. they get one guess. When the guess is made, the next person in the group goes, and so on and so forth.""" ,
      )

    );
  }
}

