import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/RouteAnimation.dart';
final TextEditingController _controller = new TextEditingController();

class GlowyButton extends StatelessWidget {
  final Widget pageToShow;
  String buttonText;

  GlowyButton({this.buttonText, this.pageToShow});

  @override
  Widget build(BuildContext context) {
    Helm helm = new Helm();
    // TODO: implement build
    return SizedBox(
        width: 300,
        height: 100,
        child:
        new Stack(
            children: <Widget>[
              new OutlineButton(
                  textColor: Colors.white,
                   highlightedBorderColor: Colors.orange[300],

                  onPressed: () {
                    _controller.clear();
                    Navigator.push(
                      context,
                      RouteAnimation(page: (pageToShow)),
                    );
                    },
                  child: Text(
                    buttonText,
                    style: TextStyle(
                        inherit: true,
                        fontSize: 30.0,
                        color: Colors.white,
                        shadows: [
                          Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                          ),
                          Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                          ),
                        ]
                    ),
                  )
              )

            ]
        )
      //function goes here for button action
      /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
      // To go back to previous screen do Navigator.pop(context); in onPress area of other button
    );
  }
}