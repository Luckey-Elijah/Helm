import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'daily_checkin_slider.dart';
import 'daily_checkin_retrieval.dart';
import 'widgets/profile_name_text.dart';
import 'widgets/profile_picture.dart';
import 'widgets/onboarding_button.dart';

class CampView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/CampBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.8),
            child: ProfilePicture(
              imagePath: 'Assets/Icons/MindIcon.jpg',
            ),
          ),
          Align(
            alignment: Alignment(0, -0.2),
            child: ProfileNameText(
              profileName: "Name Here",
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: OnboardingButton(
              buttonLabel: "Daily Check-In",
              screen: DailyCheckin(),
            ),
          ),
          Center(),
          Align(
            alignment: Alignment(0, .5),
            child: OnboardingButton(
              buttonLabel: "Review Check-Ins",
              screen: DailyCheckinRetrieval(),
            ),
          )
        ],
      ),
    );
  }
}
