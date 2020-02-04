import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackendButton extends StatelessWidget
{
  String buttonText;
  Function function; // Apparently you can do this. Found it on Stack Overflow

  BackendButton({this.buttonText,this.function}); // This allows you to pass parameters from view to button
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(

      height: 100,
      width: 100,
      child: RaisedButton(
        child: Text(buttonText),

        onPressed: (){
          function;
        },


      ),



    );
  }

}