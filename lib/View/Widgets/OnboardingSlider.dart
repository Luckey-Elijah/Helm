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
     // alignment: Alignment.center,
      children: <Widget>[
        Align(
            alignment: Alignment(0,-1),
           child:Text(sliderValue.toInt().toString(),style: TextStyle(color: Colors.white))),

        SliderTheme(
          data: (SliderTheme.of(context).copyWith(
            inactiveTrackColor: Colors.white,
            activeTrackColor: Colors.orange,
            thumbColor: Colors.orangeAccent
          )) ,
        child:Slider(
          min: 0.0,
          max: 100.0,
          inactiveColor: Colors.white,
          onChanged: sliderStatus,
          value: sliderValue,
        )),

      ],
    );
  }

  double sliderStatus(double input) {
    setState(() {
     // print(sliderValue);
      sliderValue = input;
    });
    return sliderValue;
  }

}
