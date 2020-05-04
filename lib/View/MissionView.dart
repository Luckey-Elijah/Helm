import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/GlowyButton.dart';

import 'TaskListView.dart';
import 'Widgets/MissionButton.dart';

class MissionView extends StatelessWidget {
  MissionButton missionButton = new MissionButton();
  GlowyButton glowyButton = new GlowyButton();
  TaskList listViewMind = new TaskList(title: 'Mind');
  TaskList listViewBody = new TaskList(title: 'Body');
  TaskList listViewLife = new TaskList(title: 'Life');
  TaskList listViewSoul = new TaskList(title: 'Soul');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/MissionBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GlowyButton(buttonText: "Mind", pageToShow: listViewMind),
                    GlowyButton(buttonText: "Body", pageToShow: listViewBody),
                    GlowyButton(buttonText: "Life", pageToShow: listViewLife),
                    GlowyButton(buttonText: "Soul", pageToShow: listViewSoul)
                  ])
            ])
      ],
    ));
  }
}
