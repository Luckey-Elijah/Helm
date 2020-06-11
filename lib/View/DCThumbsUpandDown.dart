import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/OnboardingClearButton.dart';
import 'Widgets/TempButton.dart';

class DCThumbsUpandDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/OnBoardingScreens.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: Alignment(0, -0.8),
            child: Text(
              "How well are you feeling Today?.",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
        Align(
            alignment: Alignment(-.2, -0.73),
            child: OnboardingClearButton(
              height: 50.0,
              width: 50.0,
              buttonText: "👍",
            )),
        Align(
            alignment: Alignment(.2, -0.73),
            child: OnboardingClearButton(
              height: 50.0,
              width: 50.0,
              buttonText: "👎",
            )),
        Align(
          alignment: Alignment(0, 0),
          child: TempButton(),
        ),
        Align(
            alignment: Alignment(0, -0.57),
            child: Text(
              "Anxious? ",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
        Align(
            alignment: Alignment(-.2, -0.50),
            child: OnboardingClearButton(
              height: 50.0,
              width: 50.0,
              buttonText: "👍",
            )),
        Align(
            alignment: Alignment(.2, -0.50),
            child: OnboardingClearButton(
              height: 50.0,
              width: 50.0,
              buttonText: "👎",
            )),

        /*
            Repeat Align for all Eight questions
            //👍 For thumbs up
            // 👎 for thumbs down
             */
      ]),
    );
  }
}
