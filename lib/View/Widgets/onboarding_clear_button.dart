import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingClearButton extends StatefulWidget {
  final double height, width;
  final String buttonText;

  OnboardingClearButton({this.height, this.width, this.buttonText});

  @override
  ClearButtonState createState() => new ClearButtonState(
        height: height,
        width: width,
        buttonText: buttonText,
      );
}

class ClearButtonState extends State {
  double height, width;
  String buttonText;
  bool status = false;

  ClearButtonState({this.height, this.width, this.buttonText});

  TextEditingController edit = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: new RaisedButton(
        child: new Text(buttonText),
        textColor: Colors.white,
        color: status ? Colors.white70 : Colors.transparent,
        onPressed: () {
          setState(() => status = !status);
          selection(buttonText);
        },
      ),
    );
  }

  String selection(select) {
    return select;
  }
}
