import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:senior_design/View/Helm.dart';


class MissionButton extends StatelessWidget {
  String missionTitle;
  String missionDescription;

  MissionButton({this.missionTitle, this.missionDescription});

  @override
  Widget build(BuildContext context) {
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
        width: 300,
        height: 100,
        child:
        new Stack(
            children: <Widget>[
              new OutlineButton(
                  textColor: Colors.white,
                  highlightedBorderColor: Colors.black,

                  onPressed: () => MissionPopup(context, missionTitle, missionDescription),

                  child: Text(
                    missionTitle,
                    style: TextStyle(
                        inherit: true,
                        fontSize: 30.0,
                        color: Colors.white,
                        shadows: [
                          Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                          ),
                        ]
                    ),
                  )
              )

            ]
        )
      //function goes here for button action
      /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
      // To go back to previous screen do Navigator.pop(context); in onPress area of other button
    );
  }
}

MissionPopup(BuildContext context,String missionTitle, String missionDescription) {
  Alert(
    context: context,
    title: "\n" + missionTitle,
    desc: missionDescription + "\n\n\n",
    buttons: [
      DialogButton(
        child: Text(
          "Okay",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: ()  => Navigator.pop(context),
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "Complete",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: ()  => Navigator.pop(context),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
      )
    ],
  ).show();
}

