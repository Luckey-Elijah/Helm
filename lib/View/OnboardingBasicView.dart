import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/OnboardingView.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';
import 'package:senior_design/View/Widgets/OnboardingButton.dart';

import 'Helm.dart';
import 'OnboardingGoals.dart';
import 'Widgets/DropdownButton.dart';

class OnboardingBasicView extends StatelessWidget
{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     // backgroundColor: Colors.lightGreen,

      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/OnboardingGoalsBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,-0.8),
          child:Text("What is your name?",style: TextStyle(color: Colors.white,))),
          Align(
              alignment: Alignment(0,-.6),
              child: TextFormField(style: TextStyle(color: Colors.white,),decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white))),)),

          Align(
              alignment: Alignment(0,-.3  ),
              child:Text("How old are you?",style: TextStyle(color: Colors.white,))),

          Align(
              alignment: Alignment(0,-.1),
              child:TextFormField(style: TextStyle(color: Colors.white,),decoration:InputDecoration(enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white))),)),
          Align(
              alignment: Alignment(0,.2),
              child:Text("What is your Gender?",style: TextStyle(color: Colors.white,))),

          Align(
              alignment: Alignment(0,.5),
             // child:TextFormField(decoration:InputDecoration(border: OutlineInputBorder()),)),
              child: DropdownButtons()
          ),

          Align(
            alignment: Alignment(0,.8),
            child: OnboardingButton(
              buttonLabel: "Continue",
              screen: OnboardingGoals(),
             // journalEntry: ,

            ))
        ],
      )
    );
  }

}