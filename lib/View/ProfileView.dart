import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/SkillsBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Text("Profile/Skills Page"),
        )
      ],
    ));
  }
}
