import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {

  final String text;
  InfoCard({this.text});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                text,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold

                )
            ),
//FIGURE OUT HOW TO MAKE A DELETE METHOD OR SOMETHING
          ],
        ),
      ),
    );
  }
}

class ICard{
  String text;
  ICard({this.text});
}


class DeletableInfoCard extends StatelessWidget {

  final ICard icard;
  final Function delete;
  DeletableInfoCard({this.icard, this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                icard.text,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold

                )
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('dismiss'),
              icon: Icon(Icons.delete),
            )

          ],
        ),
      ),
    );
  }
}



class NewsCards extends StatefulWidget {
  @override
  _NewsCardsState createState() => _NewsCardsState();
}

class _NewsCardsState extends State<NewsCards> {

  List<ICard> NewsCard = [
    ICard(text: """IceBreakers and other team building games! More content coming soon! (Reminder, this app is still in development). """),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: NewsCard.map((card) =>  DeletableInfoCard(
          icard: card,
          delete: () {
            setState(() {
              NewsCard.remove(card);
            });
          }

      )).toList(),

    );
  }
}
