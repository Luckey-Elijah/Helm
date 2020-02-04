import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/ClearButton.dart';

import 'Widgets/Button.dart';
import 'Widgets/LoginButton.dart';

class LoginView extends StatelessWidget {


  LoginButton button = new LoginButton();
  ClearButton cButton = new ClearButton();
  Helm helm = new Helm();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            new Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/LoginBackground.png'),
                  fit: BoxFit.cover,

                ),

              ),

            ),

            Align(
              alignment: Alignment(0,-.5),
              child: Image.asset('Assets/Tent.png')

            ),
            Align(
              alignment: Alignment(0,-.3),
              child: Text("Helm",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Gotham-Medium')),

            ),
            Align(
                alignment: Alignment(0, .0), // Changes place of widget
                child: LoginButton(
                  pageToShow: helm,
                )
              // Created button in different class
            ),
            Align(
                alignment: Alignment(0, .9), // Changes place of widget
                child: ClearButton(
                  pageToShow: helm,
                ),
              // Created button in different class
            )

          ],
        )

    );
  }
}