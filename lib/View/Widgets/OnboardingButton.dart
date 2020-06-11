import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final String buttonLabel;
  final Widget screen;

  OnboardingButton({this.buttonLabel, this.screen});

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
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
