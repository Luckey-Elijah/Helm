import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'TaskListView.dart';
import 'Widgets/GlowyButton.dart';

class TaskView extends StatelessWidget {
  TaskList listView = new TaskList();
  GlowyButton glowButton = new GlowyButton();
  //mind, body, life, soul

  @override
  Widget build(BuildContext context) {
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
          Center(
            child: Text("Tasks Page"),
          ),
          Align(
              alignment: Alignment(0.5, 0.5), // Changes place of widget
              child:
                  glowButton.build(context) // Created button in different class
              )
        ],
      ),
    );
  }
}
