import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Helm.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: RaisedButton(
        child: Row(
          children: <Widget>[
            Text(
              "Button",
              style: TextStyle(fontFamily: "Gotham-Light"),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Helm()),
          );
        },
      ),
    );
  }
}
