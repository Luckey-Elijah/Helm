import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';
import 'Widgets/TempButton.dart';


class DailyCheckin extends StatefulWidget
{
  @override
  _DCSlider createState() => _DCSlider();
}

/*
TODO
1. Export the data from the slider to the database
2. Discover how to make it closer to the concept image
3. Research a clearer way to reuse code.
 */

//Daily Check in Slider Class
 class _DCSlider extends State<DailyCheckin>{

   TempButton tempButton = new TempButton();

   double _generalMoodVal = 0.0;
   double _anxietyLevelVal = 0.0;
   double _exceriseVal = 0.0;
   double _eatWellVal =0.0;
   double _productivityVal =0.0;
   double _overallEnergyVal = 0.0;
   double _stayOrganizedVal = 0.0;

   @override
    Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.green,
        //ListView or Stack???
        body: ListView(
            children: <Widget>[
              // Main Title
              Align(
                alignment: Alignment(0,-.8),
                child: Text("HELM", style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Gotham-Light'))
              ),

              Align(
                alignment: Alignment(0,-.62),
                  /*
                 For the text section of the align section,
                 it is pushed back for the words can be centered in the view screen.
                  - James Floyd
                   */
                  child: Text('''
    Think About the last week. 
         Rate on scale of 1-100 how you 
         feel strong in these catagories:''', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light'))
              ),

              /*
              //For General Mood Slider
              Align(
                alignment: Alignment(0,-.7),

                child: Slider(
                  inactiveColor: Colors.black,
                  activeColor: Colors.orange,
                  min: 0.0,
                  max: 100.0,
                  //label: ("0"),
                  value: _generalMoodVal,

                  onChanged: (newValue){

                    setState(()
                        {
                          _generalMoodVal =newValue;
                        });
                  },


                )
              ),
              //General Mood Display

              Align(
                alignment: Alignment(-.98, 0),
                child: Text("0",style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),
              Align(
                alignment: Alignment(1, 0),
                child: Text("100",style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),
              ),

*/

              /*
              Align(
                alignment: Alignment(0, .5),
                child: Text("General Mood: ${_generalMoodVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),
              ),
*/
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("General Mood: ${_generalMoodVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _generalMoodVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _generalMoodVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Anxiety Level: ${_anxietyLevelVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),


              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _anxietyLevelVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _anxietyLevelVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Excerise: ${_exceriseVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _exceriseVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _exceriseVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Eating Well: ${_eatWellVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _eatWellVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _eatWellVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Productivity: ${_productivityVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _productivityVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _productivityVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Overall Energy: ${_overallEnergyVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _overallEnergyVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _overallEnergyVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Staying Organized: ${_stayOrganizedVal.toInt()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Gotham-Light')),

              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0", style: TextStyle(color: Colors.white)),
                    Slider(
                      value: _stayOrganizedVal,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      min: 0.0,
                      max: 100.0,
                      //label: ("0"),

                      onChanged: (newValue){

                        setState(()
                        {
                          _stayOrganizedVal = newValue;
                        });
                      },
                    ),
                    Text("100", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),


              /*
              The temp button will take the user back to this view!
               */

              Align(
                alignment: Alignment(0, .7),
                child: tempButton.build(context),
              )

            ]
        )
      );
    }
}