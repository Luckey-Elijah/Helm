import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;

  ProfilePicture({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
