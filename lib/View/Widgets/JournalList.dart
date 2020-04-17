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


    return Scaffold(
       backgroundColor: Colors.black,
        body: ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),

      itemBuilder: (context,index){
        return ListTile(
          title: Text(list[index].journalName, style: TextStyle(color: Colors.white,),),
          onTap:(){
           // print("Index:" + list.length.toString());
            Navigator.push(context, MaterialPageRoute(builder: (context)=> JournalView(name: list[index].journalName, content: list[index].journalEntry, date: list[index].journalDate.toString().split(" ")[0],index: index,)));


          } ,

        );
      },

    ));
  }







}