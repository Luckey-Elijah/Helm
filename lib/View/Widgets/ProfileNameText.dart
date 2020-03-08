import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNameText extends StatelessWidget
{

  String profileName;

  ProfileNameText({this.profileName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return

    Text(
      "Hello " + profileName,
      style: TextStyle(color: Colors.white),

    );
  }

}