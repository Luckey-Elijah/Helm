import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helm.dart';
import '../../Model/journal.dart';

class DeleteJournalButton extends StatelessWidget {
  final String buttonText;
  final Function function;
  final int index;
  final Journal helmJournal = new Journal();

  DeleteJournalButton(
      {this.buttonText,
      this.function,
      this.index}); // This allows you to pass parameters from view to button
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 100,
      child: RaisedButton(
        color: Colors.orange,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        onPressed: () {
          if (index >= 0) {
            helmJournal.removeEntryAt(index);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Helm()),
            );
          }
          //  helmJournal.removeEntry(helmJournal.entryList);
          else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Helm()),
            );
          }
        },
      ),
    );
  }
}
