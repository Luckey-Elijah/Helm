import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/url_launcher_button.dart';

/*
=============================
=      Resource View        =
=============================

The resource view contains buttons that will take the user to an extrenal resource site.

 */

class ResourceView extends StatelessWidget {
  final UrlLauncherButton urlButton = new UrlLauncherButton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ResourcesScreen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-.7, .4),
            child: UrlLauncherButton(
              title: "Break Bad Habits",
              urlTemp:
                  "https://lifehacker.com/top-10-ways-to-break-bad-habits-1694247761",
            ),
          ),
          Align(
            alignment: Alignment(.7, .4),
            child: UrlLauncherButton(
              title: "Calm Insecurity",
              urlTemp:
                  "https://www.psychologytoday.com/us/blog/cui-bono/201012/agreeing-the-four-agreements",
            ),
          ),
          Align(
            alignment: Alignment(-.7, .7),
            child: UrlLauncherButton(
              title: "Sleep Aid",
              urlTemp: "https://tinyurl.com/r23lyvp",
            ),
          ),
          Align(
            alignment: Alignment(.7, .7),
            child: UrlLauncherButton(
              title: "Stress Help",
              urlTemp: "https://conquer.today/emergency-health-kit/",
            ),
          ),
        ],
      ),
    );
  }
}
