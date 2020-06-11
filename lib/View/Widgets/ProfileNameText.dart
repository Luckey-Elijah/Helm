import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNameText extends StatelessWidget {
  final String profileName;

  ProfileNameText({this.profileName});
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello " + profileName,
      style: TextStyle(color: Colors.white),
    );
  }
}
