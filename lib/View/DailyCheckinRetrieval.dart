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
  var entries = new List<JournalEntry>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Entry entry = new Entry();

    var entryList = new List<Entry>();

     entryList = helmJournal.entryList;
     listCheck(entries);



    for(int i=0; i < entryList.length; i++) {
      entry = entryList[i];
      JournalEntry je = new JournalEntry(
          entry.body, entry.dateTime, entry.title);

      // if(je.journalName != "" || je.journalName != null)
      //   print("entry added");
      entries.add(je);
    }

   print(entries.length.toString());

    return Scaffold(
      backgroundColor: Colors.green,

       body: Stack(
       children: <Widget>[JournalList(list: entries,)],
      ),

    );
  }


  int listCheck(List<JournalEntry> e)
  {
    int actualLength=0;
    for(int i=0; i < e.length;i++)
    {
      if(e[i].journalName != null)
      {
        actualLength++;
      }
      print(e[i].journalName);

      if(i == 10)
      {
        print("Name" + e[i].journalName);
      }
    }
    print("actualLength:" + actualLength.toString());
    return actualLength;
  }

}