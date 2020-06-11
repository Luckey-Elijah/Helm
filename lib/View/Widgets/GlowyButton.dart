import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RouteAnimation.dart';

final TextEditingController _controller = new TextEditingController();

class GlowyButton extends StatelessWidget {
  final Widget pageToShow;
  final String buttonText;

  GlowyButton({this.buttonText, this.pageToShow});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: new Stack(
        children: <Widget>[
          new RaisedButton(
            color: Colors.orange,
            padding: EdgeInsets.all(15.0),
            onPressed: () {
              _controller.clear();
              Navigator.push(
                context,
                RouteAnimation(page: (pageToShow)),
              );
            },
            child: Text(
              buttonText,
              style: TextStyle(
                inherit: true,
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: 'GothamNarrow-Book',
              ),
            ),
          )
        ],
      ),
    );
  }
}
