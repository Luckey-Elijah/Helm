import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCRUD {
  final Firestore fireInstance = Firestore.instance;

  void createData(String path, String docID, Map data) {
    fireInstance
      .collection(path)
      .document(docID)
      .setData(data);
  }

  void readData(String path) {
    fireInstance
      .collection(path)
      .getDocuments()
      .then((QuerySnapshot snapshot) {
        snapshot.documents.forEach((f) => print('${f.data}}'));
      });
  }

  void updateData(String path, String docID, Map data) {
    try {
      fireInstance
        .collection(path)
        .document(docID)
        .updateData(data);
    } catch (e) {
      print(e.toString());
    }
  }

  void deleteData(String path, String docID) {
    try {
      fireInstance
        .collection(path)
        .document(docID)
        .delete();
    } catch (e) {
      print(e.toString());
    }
  }
}