import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';


class LoginButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Helm looks up all the other views
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
      width: 400,
      height: 60,
      child:
      RaisedButton(
        //alignment: Alignment(100.0, 100.0),

       child: Text("Start my journey", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20)),

          color: Colors.green,
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Helm()),

            );
            //function goes here for button action
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
            // To go back to previous screen do Navigator.pop(context); in onPress area of other button
          }

      ),
    );

  }
}


