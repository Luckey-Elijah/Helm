import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Helm.dart';
import 'OnboardingBasicView.dart';
import 'Widgets/ClearButton.dart';
import 'Widgets/LoginButton.dart';

class LoginView extends StatelessWidget {
  final LoginButton button = new LoginButton();
  final ClearButton cButton = new ClearButton();
  final Helm helm = new Helm();
  final OnboardingBasicView onView = new OnboardingBasicView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/LoginBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
              alignment: Alignment(0, -.5),
              child: Image.asset('Assets/Tent.png')),
          Align(
            alignment: Alignment(0, -.3),
            child: Text("Helm",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Gotham-Medium')),
          ),
          Align(
            alignment: Alignment(0, .0),
            child: LoginButton(
              pageToShow: onView,
            ),
          ),
          Align(
            alignment: Alignment(0, .9),
            child: ClearButton(
              pageToShow: helm,
            ),
          )
        ],
      ),
    );
  }
}
