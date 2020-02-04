import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalEntryView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>
        [Text("Journal Entry"),
          TextField(decoration: InputDecoration(border: OutlineInputBorder()),)]

      )
    );
  }

}