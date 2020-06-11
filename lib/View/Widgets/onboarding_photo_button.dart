import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Model/profile_data.dart';
import '../onboarding_goals.dart';

class OnboardingPhotoButton extends StatefulWidget {
  final String buttonLabel;
  final Widget screen;
  final String name;
  final String bio;

  OnboardingPhotoButton({
    this.buttonLabel,
    this.screen,
    this.bio,
    this.name,
  });

  @override
  _OnboardingPhotoButtonState createState() => _OnboardingPhotoButtonState();
}

class _OnboardingPhotoButtonState extends State<OnboardingPhotoButton> {
  String photoPath = '';

  var file;

  ProfileData profileData = ProfileData();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
        child: Text(widget.buttonLabel,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20)),
        color: Colors.orange,
        onPressed: () {
          getPaths();
          profileData.bio = widget.bio;
          profileData.name = widget.name;
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
    profileData.imagePath = photoPath;
    File file = File(photoPath);
    profileData.image = file;
    prefs.remove("PhotoPath");
  }
}
