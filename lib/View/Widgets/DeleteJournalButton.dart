import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/journal.dart';

class DeleteJournalButton extends StatelessWidget {
  String buttonText;
  Function function;
  int index;// Apparently you can do this. Found it on Stack Overflow
  Journal helmJournal = new Journal();

  DeleteJournalButton(
      {this.buttonText,
      this.function,this.index}); // This allows you to pass parameters from view to button
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 60,
      width: 100,
      child: RaisedButton(
        child: Text(buttonText),
        onPressed: () {
          if(index >= 0)
            helmJournal.entryList.removeAt(index);
          //  helmJournal.removeEntry(helmJournal.entryList);

          Navigator.pop(context);

        },
      ),
    );
  }
}
