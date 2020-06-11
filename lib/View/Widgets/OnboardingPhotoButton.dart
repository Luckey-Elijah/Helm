import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Model/profile_data.dart';
import '../OnboardingGoals.dart';

class OnboardingPhotoButton extends StatelessWidget {
  final String buttonLabel;
  final Widget screen;
  // TODO: [photoPath] should be [final] and change [getPaths()] appropiately.
  String photoPath = '';
  final String name;
  final String bio;
  var file;

  OnboardingPhotoButton({
    this.buttonLabel,
    this.screen,
    this.bio,
    this.name,
  });

  ProfileData pData = new ProfileData();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
        child: Text(buttonLabel,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20)),
        color: Colors.orange,
        onPressed: () {
          getPaths();
          pData.setBio(bio);
          pData.setName(name);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingGoals()),
          );
        },
      ),
    );
  }

  Future getPaths() async {
    final prefs = await SharedPreferences.getInstance();
    photoPath = prefs.getString("PhotoPath");
    pData.setImage(photoPath);
    File file = new File(photoPath);
    pData.setFile(file);
    prefs.remove("PhotoPath");
  }
}
