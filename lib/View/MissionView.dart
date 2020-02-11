import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MissionView extends StatelessWidget {
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
          child: Text("Misson/Mission Page"),
        )
      ],
    ));
  }
}
