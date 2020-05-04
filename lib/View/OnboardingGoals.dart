import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/OnboardingView.dart';
import 'package:senior_design/View/Widgets/OnboardingClearButton.dart';

import 'Widgets/OnboardingButton.dart';

class OnboardingGoals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
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
              alignment: Alignment(0, -0.6),
              child: Text(
                "Great, thanks! Now, let's talk about your goals.",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          Align(
              alignment: Alignment(0, -0.4),
              child: Text(
                  "Pick your top three categories in which you are most excited to build strength.",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          Align(
              alignment: Alignment(-0.5, -.2),
              child: OnboardingClearButton(
                height: 50.0,
                width: 110.0,
                buttonText: "Depression",
              )),
          Align(
              alignment: Alignment(.5, -.2),
              child: OnboardingClearButton(
                height: 50.0,
                width: 135.0,
                buttonText: "General Anxiety",
              )),
          Align(
              alignment: Alignment(-.9, .0),
              child: OnboardingClearButton(
                height: 50.0,
                width: 100.0,
                buttonText: "Fitness",
              )),
          Align(
              alignment: Alignment(0, 0.0),
              child: OnboardingClearButton(
                height: 50.0,
                width: 125.0,
                buttonText: "Social Anxiety",
              )),
          Align(
              alignment: Alignment(.8, .0),
              child: OnboardingClearButton(
                height: 50.0,
                width: 90.0,
                buttonText: "Nutrition",
              )),
          Align(
              alignment: Alignment(-.9, .2),
              child: OnboardingClearButton(
                height: 50.0,
                width: 125.0,
                buttonText: "Productivity",
              )),
          Align(
              alignment: Alignment(0, .2),
              child: OnboardingClearButton(
                height: 50.0,
                width: 80.0,
                buttonText: "Energy",
              )),
          Align(
              alignment: Alignment(.9, .2),
              child: OnboardingClearButton(
                height: 50.0,
                width: 125.0,
                buttonText: "Organization",
              )),
          Align(
              alignment: Alignment(0, .5),
              child: OnboardingButton(
                screen: OnboardingView(),
                buttonLabel: "LETS DO IT TOGETHER!",
              ))
        ],
      ),
    );
  }
}
