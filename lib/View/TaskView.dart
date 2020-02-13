import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/ViewModel/TaskViewModel.dart';

import 'Widgets/GlowyButton.dart';

class TaskView extends StatelessWidget {

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
                       GlowyButton(buttonText: "Mind",),
                       GlowyButton(buttonText: "Body",),
                       GlowyButton(buttonText: "Life",),
                       GlowyButton(buttonText: "Soul",)
                     ]
                 )
             ),
           ]
        )
    );
  }
}