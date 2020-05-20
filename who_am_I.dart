import 'package:flutter/material.dart';
import 'package:icebreakers/custom_widgets/GamePage.dart';

class WAI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Who am I?"),
        backgroundColor: Colors.cyan,
      ),
      body: GamePage(
        title: "Who am I?",
        text: """Who am I is a popular Icebreaker game that is fun for the whole family. Lets learn how to play! Everyone gets a sticky not withe the name of a famous person on it. They are not allowed to look at the sticly note. They then place the sticky note on their forehead. Here is where the real fun begins. Players ask each other yes or no questions about the people on their sticky notes, until they figure out who it is. This continues until everyone has their sticky note figure out. """,
      ),
    );
  }
}

