import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:senior_design/View/Widgets/LoginButton.dart';


class AppLoginView extends StatelessWidget {

  //LoginButton button = LoginButton();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/LoginBackground.png'),
                  fit: BoxFit.cover,
                ),
              ),

            ),
           /*
           //How to fix this issue!

           Center(
               child: button.build(context)
            ),
            Align(
              alignment: Alignment(.5, 0.1), // Changes place of widget
              //Add image: AssertImage('Assets/Icons/tent_graphic.png'),

              child: Text('Helm',
                  style: TextStyle(fontSize: 50)),// Created button in different class
              ),
            */
          ],
        )
    );
  }

}