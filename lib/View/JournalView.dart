import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/entry.dart';
import 'package:senior_design/Model/journal.dart';

import 'package:senior_design/View/DailyCheckinRetrieval.dart';

import 'Widgets/DeleteJournalButton.dart';


class JournalView extends StatelessWidget{

  String name;
  String content;
  String date;
  int  index;

  JournalView({this.name,this.content,this.date,this.index});
//  var dateTime = new DateFormat("dd/MM/yyyy HH:mm:ss")




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(child: Text(date),
            alignment: Alignment(-0.7,-0.7),
          ),
          Align(child: Text(name),
            alignment: Alignment(-0.7,-0.5),

          ),
          Align(child: Text(content),
            alignment: Alignment(-0.5,-0.3),
          ),


          Align(child: DeleteJournalButton(buttonText: "Back",index: -1,),
              alignment: Alignment(.4,.7),),
          Align(child: DeleteJournalButton(buttonText: "Delete",index: index,),
          alignment: Alignment(-.4,.7),)


        ],

        

      ),
    );
  }


}