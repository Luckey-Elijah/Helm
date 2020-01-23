import 'package:flutter/material.dart';
import 'package:senior_design/View/ResourceView.dart';
import 'package:senior_design/View/StartView.dart';
import 'CampView.dart';
import 'MissionView.dart';
import 'TaskView.dart';
import 'ProfileView.dart';

void main()
{

  LoginView loginView = new LoginView();
  runApp(MaterialApp(
      title: "Helm",
      home: Scaffold(
        body: PageView(
          children: <Widget>[
            loginView
          ]

        )

      )
  ));
}