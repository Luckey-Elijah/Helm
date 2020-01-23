import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/Button.dart';

class LoginView extends StatelessWidget {


  Button button = new Button();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/LoginBackground.png'),
                  fit: BoxFit.cover,

                ),

              ),

            ),
            Center(
              child: Text("Tasks Page"),

            ),
            Align(
                alignment: Alignment(0.5, 0.5), // Changes place of widget
                child: button.build(context) // Created button in different class
            )


          ],
        )

    );
  }
}