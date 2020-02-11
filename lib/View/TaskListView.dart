import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/TaskListView.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
        body: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment(2, .25), // Changes place of widget
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text("Test",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Gotham-Light")),
                      ]
                  )
              ),
            ]
        )
    );
  }
}