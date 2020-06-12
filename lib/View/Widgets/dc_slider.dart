import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
This widget file will be reusable code for Daily Checkin Slider View class

When the user moves the slider to the left for 👍, the sliderVale will be equaled to 0.0.
When the user moves the slider to the right for 👎, the sliderVale will be equaled to 1.0.
The default sliderValue is 0.5 with no selection.

 */

class DcSlider extends StatefulWidget {
  @override
  _DcSliders createState() => new _DcSliders();
}

class _DcSliders extends State {
  double sliderValue = 0.5;
  DcSlider mySlider = new DcSlider();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment(-.993, 0),
          child: Text(
            '👍',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Slider(
          value: sliderValue,
          inactiveColor: Colors.black,
          activeColor: Colors.orange,
          min: 0.0,
          max: 1.0,
          divisions: 2,
          onChanged: (null),
        ),
        Align(
            alignment: Alignment(.993, 0),
            child: Text('👎',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white))),
      ],
    );
  }

  // void sliderStatus(double input) {
  //   setState(() {
  //     print(mySlider.sliderValue);
  //     mySlider.sliderValue = input;
  //   });
  // }
}
