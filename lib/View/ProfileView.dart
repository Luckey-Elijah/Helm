import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/ProfilePicture.dart';

import 'Widgets/ProfileNameText.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Colors.purple,
        body: Stack(
      children: <Widget>[

        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/SkillsBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Align(
         alignment: Alignment(0.0,-0.8),
        child: ProfilePicture(imagePath: 'Assets/Icons/MindIcon.jpg',)
        ),

        Align(
          alignment: Alignment(0,-0.2),
          child:  ProfileNameText(profileName: "Name Here",)
        ),


      ],
    ));
  }
}
