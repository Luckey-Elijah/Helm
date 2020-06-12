import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

bool pressAttention = false;

class MissionButton extends StatelessWidget {
  final String missionTitle;
  final String missionDescription;

  MissionButton({this.missionTitle, this.missionDescription});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: new Stack(
        children: <Widget>[
          new OutlineButton(
            textColor: Colors.white,
            color: Colors.orange,
            onPressed: () =>
                missionPopup(context, missionTitle, missionDescription),
            child: Text(
              missionTitle,
              style: TextStyle(
                inherit: true,
                fontSize: 28.0,
                fontFamily: 'GothamNarrow-Book',
                color: pressAttention ? Colors.white : Colors.lightGreen,
              ),
            ),
          )
        ],
      ),
    );
  }
}

missionPopup(
    BuildContext context, String missionTitle, String missionDescription) {
  Alert(
    context: context,
    title: '\n' + missionTitle,
    desc: missionDescription + '\n\n\n',
    buttons: [
      DialogButton(
          child: Text(
            'Okay',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.orange),
      DialogButton(
        child: Text(
          'Complete',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => pressAttention = !pressAttention,
        color: Colors.lightGreen,
      )
    ],
  ).show();
}
