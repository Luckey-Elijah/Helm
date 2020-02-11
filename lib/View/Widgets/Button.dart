import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 100,
      height: 100,
      child: RaisedButton(
          //alignment: Alignment(100.0, 100.0),

          child: Row(children: <Widget>[
            Text(
              "Button",
              style: TextStyle(fontFamily: "Gotham-Light"),
            ),
          ]),
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
          }),
    );
  }
}
