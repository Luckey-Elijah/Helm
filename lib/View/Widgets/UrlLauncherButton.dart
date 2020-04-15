import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/*
The Url Launcher Button takes in a String for the title to be used as the button's text.
The url Temp will be passed from the Resource for the button to be formed to direct the user to the resource link.

 */

class UrlLauncherButton extends StatelessWidget {

   String title, urlTemp;

   UrlLauncherButton({this.title, this.urlTemp});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 120,
      height: 50,
      child: FlatButton(
          //"Sleep Aid"
          child: Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Gotham-Light')),
          color: Colors.orange,
          onPressed: launchUrl,


      )
    );

  }

   launchUrl() async{
     String url = urlTemp;
     if (await canLaunch(url)) {
       await launch(url);
     } else {
       throw 'Could not launch $url';
     }

   }
}