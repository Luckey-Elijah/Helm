import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/TaskListView.dart';

import 'Widgets/UnclickableButton.dart';

class TaskList extends StatelessWidget {
  UnclickableButton textButton = new UnclickableButton();
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
                  UnclickableButton(buttonText: 'Mind',)
                  ]
              )
          ),
        ]
      )
    );
  }
}