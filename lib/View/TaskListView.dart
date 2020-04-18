import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/initial_missions.dart';
import 'package:senior_design/View/TaskListView.dart';
import 'package:senior_design/ViewModel/MissionViewModel.dart';

import 'Widgets/MissionButton.dart';
import 'Widgets/UnclickableButton.dart';

class TaskList extends StatelessWidget {
  String title;

  TaskList({this.title});

  MissionViewModel missions = new MissionViewModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: ListView.builder(

        //item.Count:,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),

    itemBuilder: (context,index){
          // title:,


    }



      )
    );
  }


}