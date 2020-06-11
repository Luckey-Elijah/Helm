import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/PhotoButton.dart';

import 'OnboardingGoals.dart';
import 'Widgets/OnboardingPhotoButton.dart';

class OnboardingUserInfo extends StatefulWidget {
  final String name;

  @override
  OnboardingUserState createState() => OnboardingUserState(name: name);

  OnboardingUserInfo({this.name});
}

class OnboardingUserState extends State<OnboardingUserInfo> {
  String name;
  OnboardingUserState({this.name});
  String bio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            alignment: Alignment(-.7, -.6),
            child: Text(
              "Profile Picture",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-.8, -.5),
            child: PhotoButton(bSwitch: 0),
          ),
          Align(
            alignment: Alignment(-.5, -.5),
            child: PhotoButton(bSwitch: 1),
          ),
          Align(
            alignment: Alignment(-.7, .15),
            child: Text(
              "Bio",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, .3),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              onFieldSubmitted: (String text) => setState(() {
                bio = text;
              }),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, .8),
            child: OnboardingPhotoButton(
              buttonLabel: "Continue",
              screen: OnboardingGoals(),
              bio: bio,
              name: name,
            ),
          )
        ],
      ),
    );
  }
}
