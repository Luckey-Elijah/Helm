import 'package:flutter/material.dart';
import 'package:senior_design/View/Widgets/ProfileNameText.dart';

class ProfilePicture extends StatelessWidget {
  String imagePath;

  ProfilePicture({this.imagePath});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(imagePath))),
    );
  }
}
