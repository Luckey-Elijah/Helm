import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final String title;

  TaskList({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return null;
        },
      ),
    );
  }
}
