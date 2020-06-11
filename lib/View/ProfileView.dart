import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Widgets/StatGraph.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/SkillsBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-.85, -.8),
            child: Text(
              "Physical Health",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(-.4, -.7),
            child: StatGraph(),
          ),
          Align(
            alignment: Alignment(-.85, -.2),
            child: Text(
              "Productivity",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(-.4, .05),
            child: StatGraph(),
          ),
          Align(
            alignment: Alignment(-.85, .4),
            child: Text(
              "Mentality",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(alignment: Alignment(-.4, .8), child: StatGraph()),
        ],
      ),
    );
  }
}
