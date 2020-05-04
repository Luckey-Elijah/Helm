import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  String buttonLabel;
  Widget screen;

  OnboardingButton({this.buttonLabel, this.screen});

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
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
}
