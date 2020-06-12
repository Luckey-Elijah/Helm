import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboarding_user_info.dart';
import 'widgets/dropdown_button.dart';
import 'widgets/onboarding_basic_button.dart';

class OnboardingBasicView extends StatefulWidget {
  final String name = '';
  @override
  BasicViewState createState() => BasicViewState();
}

class BasicViewState extends State<OnboardingBasicView> {
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/OnboardingGoalsBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.8),
            child: Text(
              'What is your name?',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -.6),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
              onFieldSubmitted: (String text) => setState(
                () {
                  name = text;
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -.3),
            child: Text(
              'How old are you?',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -.1),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, .2),
            child: Text(
              'What is your Gender?',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, .5),
            child: DropdownButtons(),
          ),
          Align(
            alignment: Alignment(0, .8),
            child: OnboardingBasicButton(
              buttonLabel: 'Continue',
              screen: OnboardingUserInfo(),
            ),
          )
        ],
      ),
    );
  }
}
