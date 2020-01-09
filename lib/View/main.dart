import 'package:flutter/material.dart';
import 'package:senior_design/View/ResourceView.dart';
import 'CampView.dart';
import 'MissionView.dart';
import 'TaskView.dart';
import 'ProfileView.dart';

void main()
{
  Widget campPage = CampView();
  Widget missionPage = MissionView();
  Widget profileView = ProfileView();
  Widget resourceView = ResourceView();
  Widget taskView = TaskView();

  runApp(MaterialApp(
      title: "Helm",
      home: Scaffold(
          body: PageView(
            children: <Widget>[

             campPage,
              missionPage,
              profileView,
              resourceView,
              taskView
            ],
            scrollDirection: Axis.horizontal,
          )
      )
  ));
}