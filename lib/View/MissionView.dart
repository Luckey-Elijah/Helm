import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'TaskListView.dart';
import 'Widgets/GlowyButton.dart';
import 'Widgets/MissionButton.dart';

class MissionView extends StatelessWidget {
  final MissionButton missionButton = new MissionButton();
  final GlowyButton glowyButton = new GlowyButton();
  final TaskList listViewMind = new TaskList(title: 'Mind');
  final TaskList listViewBody = new TaskList(title: 'Body');
  final TaskList listViewLife = new TaskList(title: 'Life');
  final TaskList listViewSoul = new TaskList(title: 'Soul');
  @override
  Widget build(BuildContext context) {
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
                  GlowyButton(buttonText: "Soul", pageToShow: listViewSoul),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
