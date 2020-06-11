import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'helm.dart';
import 'widgets/onboarding_button.dart';
import 'widgets/onboarding_slider.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/OnboardingGoalsBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Text(
                  "Think about the last week."
                  " Rate on a scale of 1-100* how you feel strong in these categories: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
                child:
                    Text("General Mood", style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child: Text("Peace and Calm",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child: Text("Exercise", style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child:
                    Text("Eating Well", style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child:
                    Text("Productivity", style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child: Text("Overall Energy",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 4),
                child: Text("Staying Organized",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            OnboardingSlider(),
            OnboardingButton(buttonLabel: "Continue", screen: Helm())
          ],
        ),
      ),
    );
  }
}
