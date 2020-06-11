import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'task_list_view.dart';
import 'widgets/glowy_button.dart';

class TaskView extends StatelessWidget {
  final TaskList listView = new TaskList();
  final GlowyButton glowButton = new GlowyButton();

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
              alignment: Alignment(0.5, 0.5), child: glowButton.build(context))
        ],
      ),
    );
  }
}
