import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senior_design/View/Widgets/UrlLauncherButton.dart';

/*
=============================
=      Resource View        =
=============================

The resource view contains buttons that will take the user to an extrenal resource site.

 */

class ResourceView extends StatelessWidget {
  UrlLauncherButton Urlbotton = new UrlLauncherButton();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
         children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/ResourcesScreen.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Text("Resource Page",  style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'GothamNarrow-Book')),
          ),

           Align(

             alignment: Alignment(-.7, .4),
             child: UrlLauncherButton(title:"Break Bad Habits", urlTemp: "https://lifehacker.com/top-10-ways-to-break-bad-habits-1694247761"),

             //https://lifehacker.com/top-10-ways-to-break-bad-habits-1694247761
           ),

           Align(
             alignment: Alignment(.7, .4),
             child: UrlLauncherButton(title:"Calm Insecurity", urlTemp: "https://www.psychologytoday.com/us/blog/cui-bono/201012/agreeing-the-four-agreements"),

             //https://www.psychologytoday.com/us/blog/cui-bono/201012/agreeing-the-four-agreements
           ),

           Align(
             alignment: Alignment(-.7, .7),
             child: UrlLauncherButton(title:"Sleep Aid", urlTemp: "https://tinyurl.com/r23lyvp"),
             //Urlbotton.build(context),
           ),

           Align(
             alignment: Alignment(.7, .7),
             child: UrlLauncherButton(title:"Stress Help", urlTemp: "https://conquer.today/emergency-health-kit/"),
             //Urlbotton.build(context),
           ),

      ],


    ));
  }
}
