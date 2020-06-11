import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DCRadioButton extends StatelessWidget {
  final int groupThumbs = 0;

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
