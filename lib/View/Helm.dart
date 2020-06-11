import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CampView.dart';
import 'MissionView.dart';
import 'ProfileView.dart';
import 'ResourceView.dart';

class Helm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget campPage = CampView();
    Widget missionPage = MissionView();
    Widget profileView = ProfileView();
    Widget resourceView = ResourceView();

    return Scaffold(
      body: PageView(
        children: <Widget>[
          campPage,
          missionPage,
          profileView,
          resourceView,
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
