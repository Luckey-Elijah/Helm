import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnclickableButton extends StatelessWidget {
  final String buttonText;

  UnclickableButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: new Stack(
        children: <Widget>[
          new OutlineButton(
            onPressed: () {
              print('PRESSED');
            },
            textColor: Colors.white,
            disabledBorderColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Text(
              buttonText,
              style: TextStyle(
                inherit: true,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
