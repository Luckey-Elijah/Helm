import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/journal_list.dart';
import '../Model/journal.dart';

class DailyCheckinRetrieval extends StatelessWidget {
  final Journal helmJournal = new Journal();

  @override
  Widget build(BuildContext context) {
    Entry entry = new Entry();
    print("List length " + helmJournal.entryList.length.toString());
    for (int i = 0; i < helmJournal.entryList.length; i++)
      entry = helmJournal.entryList[i];

    if (entry.title != "" || entry.title != null) print("entry added");

    print(helmJournal.entryList.length.toString());

    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          JournalList(
            list: helmJournal.entryList,
          )
        ],
      ),
    );
  }
}
