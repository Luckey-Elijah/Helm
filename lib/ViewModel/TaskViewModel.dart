import 'package:flutter/material.dart';
import 'package:senior_design/View/CampView.dart';

class TaskViewModel extends StatelessWidget
{

  // CampView campView = new CampView();
  TaskViewModel();

  void testFunction()
  {

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:
      IconButton(
          //alignment: Alignment(100.0, 100.0),
          iconSize: 50.0,
          icon: Image.asset('Assets/Icons/MindIcon.jpg'),
          onPressed: (){
            //function goes here for button action
           /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => campView),
            ); */
           // To go back to previous screen do Navigator.pop(context); in onPress area of other button
          }
      ),
    );
  }


}