import 'package:flutter/material.dart';

class DropdownButtons extends StatefulWidget {
  @override
  ActualDropdownButton createState() => new ActualDropdownButton();
}

class ActualDropdownButton extends State {
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DropdownButton<String>(
      value: gender,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      onChanged: (String newValue) {
        setState(() {
          gender = newValue;
        });
      },
      items: <String>["Male", "Female", "Other"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.black),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.black),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.black),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.black)
                  ],
                )));
      }).toList(),
    );
  }
}
