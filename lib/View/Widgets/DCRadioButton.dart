import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
The Radio Button Class for Daily Checkin mark 2.
The Radio button class will make a row with a button for
//👍 For thumbs up
// 👎 for thumbs down

Unused code

 */

class DCRadioButton extends StatelessWidget {
  int groupThumbs;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Radio(value: 0, groupValue: null, onChanged: null),
          new Text(
            '👍',
            style: new TextStyle(fontSize: 16.0),
          ),
          new Radio(value: 1, groupValue: null, onChanged: null),
          new Text(
            '👎',
            style: new TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
