import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Widget pageToShow;
  LoginButton({this.pageToShow});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: RaisedButton(
        shape: StadiumBorder(),
        child: Text(
          'Start my journey',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'Gotham-Light'),
        ),
        color: Colors.lightGreen,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageToShow),
          );
        },
      ),
    );
  }
}
