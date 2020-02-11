import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/TaskListView.dart';

import 'Widgets/GlowyButton.dart';

class TaskView extends StatelessWidget {
  TaskList listView = new TaskList();
  GlowyButton glowButton = new GlowyButton();
  //mind, body, life, soul
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/TaskBackgroundImage.png'),
              fit: BoxFit.cover,

            ),

          ),

            ),
           Align(
             alignment: Alignment(2, .25), // Changes place of widget
             child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       GlowyButton(buttonText: "Mind",pageToShow: listView),
                       GlowyButton(buttonText: "Body",pageToShow: listView),
                       GlowyButton(buttonText: "Life",pageToShow: listView),
                       GlowyButton(buttonText: "Soul",pageToShow: listView)
                     ]
                 )
             ),
           ]
        )
    );
  }
}