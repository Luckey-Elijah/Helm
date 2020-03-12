import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';

final TextEditingController _controller = new TextEditingController();

class ClearButton extends StatelessWidget {
  final Widget pageToShow;

  ClearButton({this.pageToShow});

  @override
  Widget build(BuildContext context) {
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
        width: 300,
        height: 50,
        child: new FlatButton(
          textColor: Colors.white,
          highlightColor: Colors.lightGreen,
          onPressed: () {
            _controller.clear();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pageToShow),
            );
          },
          child: Text(
            "Already a member? Log In",
            style: TextStyle(fontSize: 14.0, fontFamily: "Gotham-Light"),
          ),
        )

        //function goes here for button action

        // To go back to previous screen do Navigator.pop(context); in onPress area of other button
        );
  }
}
