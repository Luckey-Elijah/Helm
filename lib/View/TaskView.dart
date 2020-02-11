import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/Button.dart';
import 'package:senior_design/ViewModel/TaskViewModel.dart';

class TaskView extends StatelessWidget {
  Button button = new Button();

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
        Center(
          child: Text("Tasks Page"),
        ),
        Align(
            alignment: Alignment(0.5, 0.5), // Changes place of widget
            child: button.build(context) // Created button in different class
            )
      ],
    ));
  }
}
