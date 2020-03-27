import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
import 'TaskListView.dart';
import 'Widgets/GlowyButton.dart';

class TaskView extends StatelessWidget {
=======

import 'package:senior_design/View/Widgets/Button.dart';

import 'TaskListView.dart';
import 'Widgets/GlowyButton.dart';
// import 'package:senior_design/ViewModel/TaskViewModel.dart';

class TaskView extends StatelessWidget {
  Button button = new Button();


>>>>>>> f2400648cdac292cc4375fd12d23876ae37a98c3
  TaskList listView = new TaskList();
  GlowyButton glowButton = new GlowyButton();
  //mind, body, life, soul

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
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

/*
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

 */

>>>>>>> f2400648cdac292cc4375fd12d23876ae37a98c3
  }
  }

