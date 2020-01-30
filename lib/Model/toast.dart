import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

Future<bool> spawnToastMessage(String text) {
  return Fluttertoast.showToast(
    msg: '$text',
    // toastLength: Toast.LENGTH_SHORT,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIos: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
