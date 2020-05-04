import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/RouteAnimation.dart';

final TextEditingController _controller = new TextEditingController();

class UnclickableButton extends StatelessWidget {
  String buttonText;

  UnclickableButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
        width: 300,
        height: 100,
        child: new Stack(children: <Widget>[
          new OutlineButton(
              textColor: Colors.white,
              disabledBorderColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                buttonText,
                style: TextStyle(
                  inherit: true,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ))
        ])
        //function goes here for button action
        /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
        // To go back to previous screen do Navigator.pop(context); in onPress area of other button
        );
  }
}
