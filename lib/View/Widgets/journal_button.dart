import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Model/journal.dart';
import '../../Model/entry.dart';

class JournalButton extends StatelessWidget {
  final Widget screen;
  final String buttonLabel;
  final String journalTitle;
  final String journalBody;
  final String journalEntry;

  final Journal journal = Journal();

  JournalButton({
    this.screen,
    this.buttonLabel,
    this.journalBody,
    this.journalTitle,
    this.journalEntry,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
        child: Text(buttonLabel,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20)),
        color: Colors.orange,
        onPressed: () {
          print('$journalTitle');
          print('$journalBody');
          journal.addEntry(
            Entry(
              body: journalBody,
              title: journalTitle,
              dateTime: DateTime.now(),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
