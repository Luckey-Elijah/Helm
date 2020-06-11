import 'dart:io';
import 'package:image_picker/image_picker.dart';

// Profile data model for the user.
class ProfileData {
  String name;
  String bio;
  String imagePath;
  PickedFile _image;
  final ImagePicker picker = ImagePicker();

  final String keyPrefix = 'profile-';

  set image(File file) {
    _image = PickedFile(file.path);
  }

  ProfileData({this.name, this.bio, this.imagePath});

  // Brings up system screen for the phone's gallery
  Future selectGalleryImage() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      print('pickedFile: $pickedFile');
      print('imagePath: ' + pickedFile.path);

      this.imagePath = pickedFile.path;
    }
  }

  // Brings up system screen for the phone's camera
  Future selectCameraImage() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      print('pickedFile: $pickedFile');
      print('imagePath: ' + pickedFile.path);

      this.imagePath = pickedFile.path;
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
