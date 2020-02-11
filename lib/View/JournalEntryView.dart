import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';

class JournalEntryView extends StatelessWidget {
  TextEditingController journalContorller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Stack(alignment: Alignment.center, children: <Widget>[
          Align(
              alignment: Alignment(-.9, -.7),
              child: Text("Journal Entry",
                  style: TextStyle(
                      fontFamily: "Gotham-Light",
                      color: Colors.white,
                      fontSize: 20.0))),
          Align(
              alignment: Alignment(0, -.3),
              child: TextField(
                  controller: journalContorller,
                  minLines: 2,
                  maxLines: 10,
                  decoration: InputDecoration(border: OutlineInputBorder()))),
          Align(
              alignment: Alignment(.4, .7),
              child: JournalButton(
                journalEntry: journalContorller.text,
                screen: Helm(),
              ))
        ]));
  }
}
