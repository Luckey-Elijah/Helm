import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/journal.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';
//mport 'package:senior_design/View/Widgets/JournalButtonBackup.dart';
import 'package:senior_design/ViewModel/JournalViewModel.dart';

class JournalEntryView extends StatefulWidget {

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<JournalEntryView> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  final titleController = TextEditingController();
  final journalController = TextEditingController();




  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    titleController.dispose();
    journalController.dispose();
    super.dispose();
  }

  void check()
  {
    if(titleController != null);
    dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Stack(alignment: Alignment.center, children: <Widget>[
          Align(
              alignment: Alignment(-.9, -.85),
              child: Text("Journal Entry",
                  style: TextStyle(
                      fontFamily: "Gotham-Light",
                      color: Colors.white,
                      fontSize: 20.0))),
          Align(alignment: Alignment(-.9,-.65),
              child: Text("Title",style: TextStyle(
                fontFamily: "Gotham-Light",
                color: Colors.white,))
          ),
          Align(alignment: Alignment(0,-.5),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              )),
          Align(alignment: Alignment(-.9,-.15),
              child: Text("Entry",style: TextStyle(
                fontFamily: "Gotham-Light",
                color: Colors.white,))),
          Align(
              alignment: Alignment(0, .15),
              child: TextField(
                  controller: journalController,
                  minLines: 2,
                  maxLines: 10,
                  decoration: InputDecoration(border: OutlineInputBorder()))),

          Align(

              alignment: Alignment(.4, .7),
              child: JournalButton(
                journalTitle: titleController,
                journalBody: journalController,
                buttonLabel: "Continue",
                screen: Helm(),

              ))



        ]));
  }
}




