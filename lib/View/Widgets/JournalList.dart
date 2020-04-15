import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/JournalEntry.dart';
import 'package:senior_design/View/JournalView.dart';

import '../Helm.dart';

class JournalList extends StatelessWidget
{

  List<JournalEntry> list;

  JournalList({this.list});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),

      itemBuilder: (context,index){
        return ListTile(
          title: Text(list[index].journalName ),
          onTap:(){
          //  print("tap");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> JournalView(name: list[index].journalName, content: list[index].journalEntry, date: list[index].journalDate.toString(),index: index,)));


          } ,

        );
      },

    );
  }




}