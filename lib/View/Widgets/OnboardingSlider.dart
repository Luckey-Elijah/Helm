import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingSlider extends StatefulWidget {
  @override
  OnboardingSliderParams createState() => new OnboardingSliderParams();
}

class OnboardingSliderParams extends State {
  double sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Slider(
          min: 0.0,
          max: 100.0,
          onChanged: sliderStatus,
          value: sliderValue,
        )
      ],
    );
  }

  void sliderStatus(double input) {
    setState(() {
      print(sliderValue);
      sliderValue = input;
    });
  }
}
