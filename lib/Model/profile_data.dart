import 'dart:io';

//import 'package:image_picker/image_picker.dart';

// Profile data model for the user.
class ProfileData {
  String name;
  String bio;
  String imagePath;
  File imageFile;

  ProfileData({this.name, this.bio, this.imagePath}) {
    this.imageFile = new File(this.imagePath);
  }

  String getName() {
    return this.name;
  }

  setName(name) {
    this.name = name;
  }

  String getBio() {
    return this.bio;
  }

  setBio(bio) {
    this.bio = bio;
  }

  // This is how to get gallery image or camera image
  /*Future selectGalleryImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    print('image: $image');
    print('imagePath: ' + image.path);
    if(image != null)
      this.imageFile = image;
    this.imagePath = image.path;
  }

  //
  Future selectCameraImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if(image != null)
    {
      print('image: $image');
      print('imagePath: ' + image.path);
      this.imageFile = image;
      this.imagePath = image.path;
    }
  }*/

}