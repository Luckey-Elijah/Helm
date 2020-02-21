import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 250,
      height: 50,
      child: FlatButton(
          child: Text("Resources", style: TextStyle(color: Colors.white, fontSize: 16)),
          color: Colors.orange,
          onPressed: launchUrl,


      )
    );

  }

   launchUrl() async{
     const url = 'https://tinyurl.com/r23lyvp';
     if (await canLaunch(url)) {
       await launch(url);
     } else {
       throw 'Could not launch $url';
     }

   }
}