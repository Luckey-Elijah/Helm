import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PhotoButton extends StatefulWidget {
  final int bSwitch;
  PhotoButton({this.bSwitch});
  @override
  PhotoState createState() => PhotoState(bSwitch: bSwitch);
}

class PhotoState extends State<PhotoButton> {
  final ImagePicker picker = ImagePicker();
  var future;
  String path = "yeeet";
  int bSwitch = 0;

  PhotoState({this.bSwitch});

  @override
  Widget build(BuildContext context) {
    if (bSwitch == 1)
      return SizedBox(
        width: 50,
        height: 50,
        child: IconButton(
          icon: Icon(Icons.photo_camera),
          color: Colors.white,
          onPressed: () {
            getCamera();
          },
        ),
      );
    else
      return SizedBox(
        width: 50,
        height: 50,
        child: IconButton(
          icon: Icon(Icons.photo_library),
          color: Colors.white,
          onPressed: () {
            getLibrary();
          },
        ),
      );
  }

  void getLibrary() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    path = pickedFile.path;

    final prefs = await SharedPreferences.getInstance();
    prefs.setString("PhotoPath", path);
  }

  void getCamera() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    path = pickedFile.path;

    final prefs = await SharedPreferences.getInstance();
    prefs.setString("PhotoPath", path);
  }
}
