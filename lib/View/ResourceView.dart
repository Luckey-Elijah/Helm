import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/UrlLauncherButton.dart';

class ResourceView extends StatelessWidget {
  UrlLauncherButton Urlbotton = new UrlLauncherButton();
  /*
  TODO
  1. Build Dummy Button with an External Link
  2. Place it in here
   */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
         children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/ResourceBackground.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Text("Resource Page"),
          ),
           Align(
             alignment: Alignment(0, .7),
             child: Urlbotton.build(context),
           ),
           
      ],


    ));
  }
}
