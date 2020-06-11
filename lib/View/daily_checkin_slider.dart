import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'journal_entry_view.dart';
import 'widgets/temp_button.dart';
import 'widgets/dc_slider.dart';

/*
=============================
=Daily Check in Slider Class=
=============================

This class is the screen view for the Daily Checkin.
The sliders are called into this file, and once the user selects yes or no, the
answer will be passed into the backend.

 */

class DailyCheckin extends StatelessWidget {
  final JournalEntryView journal = JournalEntryView();
  final double _generalMoodVal = 0.0;
  final double _anxietyLevelVal = 0.0;
  final double _exceriseVal = 0.0;
  final double _eatWellVal = 0.0;
  final double _productivityVal = 0.0;
  final double _overallEnergyVal = 0.0;
  final double _stayOrganizedVal = 0.0;
  final double temp = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/OnBoardingScreens.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //ListView
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            // Main Title

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                  ""
                  "HELM",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Gotham-Light')),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                  "Think About the last week. Rate on scale of thumbs up or thumbs down on how you feel strong in these catagories:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Gotham-Light')),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("General Mood?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Anxiety Level? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Excerise? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Eating Well? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Productivity? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Overall Energy? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Staying Organized? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Gotham-Light')),
            ),
            DcSlider(),

            Padding(
              padding: const EdgeInsets.all(5),
              child: TempButton(
                pageToShow: journal,
                importGM: _generalMoodVal,
                importAnxiety: _anxietyLevelVal,
                importEatingWell: _eatWellVal,
                importExercise: _exceriseVal,
                importOverallEnergy: _overallEnergyVal,
                importProductivity: _productivityVal,
                importStayOrganized: _stayOrganizedVal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
