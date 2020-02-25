import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';

/*

Only a placeholder button that will be replaced once the DailyCheckinSlider view
has the code to change the data of LoginButton or another button


 */

class JournalButton extends StatelessWidget {
  String journalEntry;
  Widget screen;
  String buttonLabel;

  JournalButton({this.journalEntry, this.screen,this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    // Helm looks up all the other views
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
          //alignment: Alignment(100.0, 100.0),

          child: Text(buttonLabel,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.orange,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
            //function goes here for button action
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
            // To go back to previous screen do Navigator.pop(context); in onPress area of other button
          }),
    );
  }
}
