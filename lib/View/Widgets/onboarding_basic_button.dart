import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onboarding_user_info.dart';

class OnboardingBasicButton extends StatelessWidget {
  final String buttonLabel;
  final Widget screen;
  final String name;

  OnboardingBasicButton({this.buttonLabel, this.screen, this.name});

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingUserInfo(name: name),
            ),
          );
        },
      ),
    );
  }
}
