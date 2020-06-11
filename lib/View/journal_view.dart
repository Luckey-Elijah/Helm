import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/delete_journal_button.dart';

class JournalView extends StatelessWidget {
  final String name;
  final String content;
  final String date;
  final int index;

  JournalView({this.name, this.content, this.date, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          Align(
            child: Text(date,
                style:
                    TextStyle(color: Colors.white, fontFamily: "Gotham-Bold")),
            alignment: Alignment(-0.7, -0.7),
          ),
          Align(
            child: Text(name,
                style:
                    TextStyle(color: Colors.white, fontFamily: "Gotham-Bold")),
            alignment: Alignment(-0.7, -0.5),
          ),
          Align(
            child: Text(content,
                style:
                    TextStyle(color: Colors.white, fontFamily: "Gotham-Bold")),
            alignment: Alignment(-0.5, -0.3),
          ),
          Align(
            child: DeleteJournalButton(
              buttonText: "Back",
              index: -1,
            ),
            alignment: Alignment(.4, .7),
          ),
          Align(
            child: DeleteJournalButton(
              buttonText: "Delete",
              index: index,
            ),
            alignment: Alignment(-.4, .7),
          )
        ],
      ),
    );
  }
}
