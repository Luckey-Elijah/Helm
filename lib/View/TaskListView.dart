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
                    if (this.title == 'Mind')
                      (
                        MissionButton(missionTitle: 'Read More', missionDescription: 'Finish at least one book this month',)
                      ),
                    if (this.title == 'Body')
                      (
                        MissionButton(missionTitle: 'Excercise More', missionDescription: '10 Pushups \n 30 jumping jacks',)
                      ),
                    if (this.title == 'Life')
                      (
                        MissionButton(missionTitle: 'Spend more time with Friends', missionDescription: 'Go out with friends at least oncce this month',)
                      ),
                    if (this.title == 'Soul')
                      (
                        MissionButton(missionTitle: 'Get Outside More', missionDescription: 'Spend 20 minutes outside',)
                      )

                  ]
              )
          ),
        ]
      )
    );
  }
}