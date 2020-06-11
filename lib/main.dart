import 'package:flutter/material.dart';
import 'View/Widgets/LoginView.dart';

void main() {
  LoginView loginView = new LoginView();

  runApp(
    MaterialApp(
      title: "Helm",
      home: Scaffold(
        body: PageView(children: <Widget>[loginView]),
      ),
    ),
  );
}
