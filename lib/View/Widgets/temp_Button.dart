import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../journal_entry_view.dart';

// Only a placeholder button that will be replaced once the DailyCheckinSlider view
// has the code to change the data of LoginButton or another button

class TempButton extends StatelessWidget {
  final Widget pageToShow;
  final double importGM,
      importAnxiety,
      importExercise,
      importEatingWell,
      importProductivity,
      importOverallEnergy,
      importStayOrganized;
  TempButton({
    this.pageToShow,
    this.importGM,
    this.importAnxiety,
    this.importExercise,
    this.importEatingWell,
    this.importProductivity,
    this.importOverallEnergy,
    this.importStayOrganized,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: RaisedButton(
        child: Text(
          'Continue',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.orange,
        onPressed: () {
          print('YOU CLICKED ME!');

          print(importGM);
          print(importAnxiety);
          print(importExercise);
          print(importEatingWell);
          print(importProductivity);
          print(importOverallEnergy);
          print(importStayOrganized);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => JournalEntryView()),
          );
        },
      ),
    );
  }
}
