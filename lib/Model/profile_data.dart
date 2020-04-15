import 'dart:io';
import 'package:image_picker/image_picker.dart';

// Profile data model for the user.
class ProfileData {
  String name;
  String bio;
  String imagePath;
  File imageFile;

  final String keyPrefix = 'profile-';

  ProfileData({this.name, this.bio, this.imagePath}) {
    if (this.imagePath != null)
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
    if(image != null)
    {
      print('image: $image');
      print('imagePath: ' + image.path);
      this.imageFile = image;
      this.imagePath = image.path;
    }
  }

  // Brings up system screen for the phone's camera
  Future selectCameraImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if(image != null)
    {
      print('image: $image');
      print('imagePath: ' + image.path);
      this.imageFile = image;
      this.imagePath = image.path;
    }
  }

  ProfileData.fromJson(Map<String, dynamic> json)
      : this.name = json['name'],
        this.bio = json['bio'],
        this.imagePath = json['imagePath'];
  
  Map<String, dynamic> toJson() => {
        'name': name,
        'bio': bio,
        'imagePath': imagePath,
      };

}