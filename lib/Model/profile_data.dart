import 'dart:io';
import 'package:image_picker/image_picker.dart';

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

  // Brings up system screen for the phone's gallery
  Future selectGalleryImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      this.imageFile = image;
      this.imagePath = image.path;
    }
  }

  // Brings up system screen for the phone's camera
  Future selectCameraImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      this.imageFile = image;
      this.imagePath = image.path;
    }
  }
}
