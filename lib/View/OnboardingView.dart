import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';
import 'package:senior_design/View/Widgets/OnboardingButton.dart';
import 'package:senior_design/View/Widgets/OnboardingSlider.dart';
import 'package:senior_design/View/Widgets/OnboardingSwitch.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.lightGreen,

        body:Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/OnboardingGoalsBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),

            child: ListView(


          scrollDirection: Axis.vertical,
          children: <Widget>[




            /*
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Text(
                  "In which of these categories are you most excited to build strength?"),
            ),
            OnboardingSwitch(
              text: "Depression",
            ),
            OnboardingSwitch(text: "General Anxiety"),
            OnboardingSwitch(text: "Social Anxiety"),
            OnboardingSwitch(text: "Fitness"),
            OnboardingSwitch(text: "Nutrition"),
            OnboardingSwitch(text: "Productivity"),
            OnboardingSwitch(text: "Energy"),
            OnboardingSwitch(text: "Organization"),
            */

            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Text(
                  "Think about the last week."
                      " Rate on a scale of 1-100* how you feel strong in these categories: ",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),)
            ,
            /*
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("General Mood"),
            ),

             */

            Align(alignment: Alignment(0,0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
                child: Text("General Mood",style: TextStyle(color: Colors.white)),
              ),),
            OnboardingSlider(),

            Align(alignment: Alignment(0,0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                    child: Text("Peace and Calm",style: TextStyle(color: Colors.white)),
                  ),),

            OnboardingSlider(),

            Align(alignment: Alignment(0,0),
            child:Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
              child: Text("Exercise",style: TextStyle(color: Colors.white)),
            ), ),

            OnboardingSlider(),

            Align(alignment: Alignment(0,0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
              child: Text("Eating Well",style: TextStyle(color: Colors.white)),
            ),),

            OnboardingSlider(),
            Align(alignment: Alignment(0,0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
              child: Text("Productivity",style: TextStyle(color: Colors.white)),
            ),),

            OnboardingSlider(),

            Align(alignment: Alignment(0,0),
            child:Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
              child: Text("Overall Energy",style: TextStyle(color: Colors.white)),
            ), ),

            OnboardingSlider(),
            Align(alignment: Alignment(0,0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
              child: Text("Staying Organized",style: TextStyle(color: Colors.white)),
            ),),

            OnboardingSlider(),
            OnboardingButton(buttonLabel: "Continue", screen: Helm())

          ],
        )));
  }
}
