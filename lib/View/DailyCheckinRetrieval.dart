import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/JournalEntry.dart';
import 'package:senior_design/View/Widgets/JournalList.dart';

class DailyCheckinRetrieval extends StatelessWidget
{
  JournalEntry entry = JournalEntry("textetxr","10/10/2020","journalName");


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    var entries = new List<JournalEntry>();


    for(int i=0; i < 20; i++)
      {
       // entry.journalName = entry.journalName + i.toString();
        entries.add(entry);
      }
    print(entries.length.toString());

    return Scaffold(
      backgroundColor: Colors.green,

       body: Stack(
       children: <Widget>[JournalList(list: entries,)],
      ),

    );
  }

}