import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/profile_data.dart';
import 'package:senior_design/View/OnboardingUserInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../OnboardingGoals.dart';

class OnboardingPhotoButton extends StatelessWidget {
  String buttonLabel;
  Widget screen;
  String photoPath;
  String name;
  String bio;
  var file;

  OnboardingPhotoButton({this.buttonLabel, this.screen, this.bio, this.name});
  ProfileData pData = new ProfileData();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
          //alignment: Alignment(100.0, 100.0),

          child: Text(buttonLabel,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.orange,
          onPressed: () {
            getPaths();

            pData.setBio(bio);
            pData.setName(name);

            //  print(bio);
            //  print(name);
            //  print(photoPath);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingGoals()),
            );
            //function goes here for button action
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
            // To go back to previous screen do Navigator.pop(context); in onPress area of other button
          }),
    );
  }

  Future getPaths() async {
    final prefs = await SharedPreferences.getInstance();
    photoPath = prefs.getString("PhotoPath");
    pData.setImage(photoPath);

    File file = new File(photoPath);

    pData.setFile(file);

    // Put datastructure method here or else program will not wait for photoPath to update to found photo path

    prefs.remove("PhotoPath");
  }
}
