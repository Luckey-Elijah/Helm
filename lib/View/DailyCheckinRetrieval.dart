import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/JournalEntry.dart';
//import 'package:senior_design/Model/JournalEntry.dart';
import 'package:senior_design/Model/entry.dart';
import 'package:senior_design/Model/journal.dart';
import 'package:senior_design/View/Widgets/JournalList.dart';
import 'package:senior_design/ViewModel/JournalViewModel.dart';


class DailyCheckinRetrieval extends StatelessWidget
{
  Journal helmJournal = new Journal();

  //JournalEntry entry = JournalEntry("textetxr","10/10/2020","journalName");








  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Entry entry = new Entry();

    var entryList = new List<Entry>();

     entryList = helmJournal.entryList;

    print("List length " +entryList.length.toString());





    var entries = new List<JournalEntry>();

    for(int i=0; i < entryList.length; i++)
      entry = entryList[i];
      JournalEntry je = new JournalEntry(entry.body, entry.dateTime, entry.title);

      if(je.journalName != "" || je.journalName != null)
        print("entry added");
        entries.add(je);





   print(entries.length.toString());

    return Scaffold(
      backgroundColor: Colors.green,

       body: Stack(
       children: <Widget>[JournalList(list: entries,)],
      ),

    );
  }

}