import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import '../../Model/journal.dart';
import '../../Model/entry.dart';

class JournalButton extends StatelessWidget {
  Widget screen;
  String buttonLabel;
  String journalTitle;
  String journalBody;

  Journal journal = Journal();

  JournalButton(
      {this.screen, this.buttonLabel, this.journalBody, this.journalTitle});

  @override
  Widget build(BuildContext context) {
    Entry entry = Entry.now();
    // Helm looks up all the other views
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
          child: Text(buttonLabel,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.orange,
          onPressed: () {
            entry
              ..body = journalBody
              ..title = journalTitle;
            journal.addEntry(entry);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          }),
    );
  }
}
