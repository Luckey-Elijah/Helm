import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Widgets/MissionButton.dart';

class MissionView extends StatelessWidget {
  MissionButton glowButton = new MissionButton();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/MissionBackground.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child:
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MissionButton(missionTitle: 'Work Out', missionDescription: '10 pushups \n20 sit ups \n30 jumping jacks',),
                      MissionButton(missionTitle: 'Go Outside', missionDescription: '30 Minutes outside',)
                      ]
            )
            ]
          )
        )
      ],
    ));
  }
}
