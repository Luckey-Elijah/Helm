import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/TaskListView.dart';

import 'Widgets/MissionButton.dart';
import 'Widgets/UnclickableButton.dart';

class TaskList extends StatelessWidget {
  UnclickableButton textButton = new UnclickableButton();
  MissionButton glowButton = new MissionButton();
  String title;

  TaskList({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(1.2, -.8), // Changes place of widget
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UnclickableButton(buttonText: this.title,),
                    MissionButton(missionTitle: 'Excercise More', missionDescription: '10 Pushups \n 30 jumping jacks',)
                  ]
              )
          ),
        ]
      )
    );
  }
}